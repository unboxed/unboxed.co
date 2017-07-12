---
authors:
  - Charlie Egan
tags: 
  - Rails
  - Innovation
main_image: "https://s3-eu-west-1.amazonaws.com/unboxed-web-images/3d394385496873a4c7111eb840bdde38.jpg"
date: "2016-09-05 12:00 +0000"
published: true
title: "Development Re-bundling in Dockerland"
has_syntax: true
---

# Development Re-bundling in Dockerland

![bundler_compose](https://s3-eu-west-1.amazonaws.com/unboxed-web-images/3d394385496873a4c7111eb840bdde38.jpg)

When starting out development on a Dockerized application, adjusting Dockerfiles and rebuilding images is a common task. Bringing together two separate services, as well as applying some gem security patches, we found ourselves doing this a lot. The repeated bundle installations quickly became very painful. Multi-tasking and regularly switching development branches only increased the number of repeated builds required.

### Docker Build 101

For those not familiar with Docker's vocabulary here's a quick intro. Docker containers run your application, containers are based on an image. Images are a blueprint that can be reused to spawn instances of containers and contain the environment in which the application runs.

Images are built up in a series of 'layers'. Each layer represents a change to the previous layer. For example, this excerpt from a Dockerfile:

```dockerfile
...
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
...
```

The first image layer contains includes the Gemfile, the second additionally contains the Gemfile.lock. The third layer contains a completed bundle install. Building this layer requires network access and can take some time for larger Gemfiles. In development, as you edit the Gemfile and Dockerfiles you rebuild the image often. Generating this bundle install layer each time takes significant time.

[Docker Compose](https://docs.docker.com/compose/compose-file/), mentioned later, is a tool for building and running multiple services (app, database, redis).

### The Problem
Most Dockerfile layers can be built up without network access; however, installing & updating gems is slow during Docker builds as gems must be fetched from the source again. Network traffic is not cached when building images.

This isn't usually a problem but when working on a number of branches, all making changes to the Gem/Dockerfile, repeatedly installing the same dependencies gets tiresome in development when changes are frequent.

### Solutions?

There are [various](https://medium.com/@fbzga/how-to-cache-bundle-install-with-docker-7bed453a5800#.g4id0no96) [posts](http://bradgessler.com/articles/docker-bundler/) [advocating](https://cookieshq.co.uk/posts/common-problems-when-starting-with-docker-and-rails/) a 'bundler cache service' in docker-compose. This new service simply offers a place for the app to manage it's dependencies _when running_. The issue here is that rebuilding the application's image (which we were doing often as we made other edits to Dockerfiles) still requires all the gems to be fetched again as the connected service, is, quite sensibly, not connected during the build process.

This method only prevents repeated clean bundle installs if you're never rebuilding application images. Jumping between different branches (in the midst of updating gems and other edits to the Dockerfiles) these 'runtime bundle caches' were of little use.

There are other options out there; [cumulatively building up multiple Gemfiles](https://github.com/cpuguy83/docker-rails-dev-demo/blob/master/Dockerfile#L17) or routing Docker's connection through a local caching proxy for example. This would require regular Dockerfile edits (Gemfile.tip.tip?) or additional developer environment setup (proxy).

At this point you've already accepted that the dev Dockerfile has some adjustments to aid development work (the production container still does a full bundle install during builds). With that in mind we started looked for other options.


### 'Just-in-time re-bundling'
We came to the conclusion that it's not really possible to have a cache when building docker images - nor would we really want to (works on my machine...). Instead we opted to only install gems to the bundle cache service (as above) when the container _runs_.

First we created a bundle cache service in docker-compose, as outlined in the linked posts above:

```yml
bundle_cache:
  image: busybox
  volumes:
    - /bundle
```

Next we created an entrypoint script for our container, this script runs bundle install before any command issued. Here the container command is run at `exec "$@"`, after checking and optionally installing the bundle.

```bash
#!/bin/bash
set -e

bundle check || bundle install

exec "$@"
```

This entry point is then added used in our service Dockerfile:

```dockerfile
FROM ruby

WORKDIR /app

COPY . /app
COPY ./entrypoint.sh /

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ruby -e 'puts "Output of default command"'
```

Note that bundle install is not referenced in the Dockerfile, this means the container can be built quickly without network access. Only when the first container starts is the bundle installed to the cache, this is then used by future containers. Removing the volume for the bundle cache would give you a truly clean start - should you want one.

***

This was our development solution. It's not ideal; the initial container run is held up by the bundle install; it's not immediately clear where the bundle install happens and it's another difference added to the list of deviations from the production Dockerfile. That said, it does 'work' and speeds up the process of editing Gem & Dockerfiles.

There's an [example repo](https://github.com/charlieegan3/docker-bundler-caching) with the barebones config for those interested. 


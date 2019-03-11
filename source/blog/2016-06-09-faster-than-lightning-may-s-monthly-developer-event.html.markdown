---
date: '2016-06-09 13:14 +0100'
published: true
title: 'Faster than Lightning: May’s monthly developer event'
authors:
  - Neil van Beinum
tags:
  - Innovation
  - Rails
main_image: "https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/8dc2439743c18f62a9b06eef6c40f9c8.JPG"
---
Each month, we host a Dev Event which is an opportunity for our developers to get together, share ideas, or just catch up with each other.<br/>
<br/>


# May's developer event

This May we hosted <i>“Faster than Lightning”</i> code talks. For this event, each developer is asked to submit a snippet of code that they found interesting. The code doesn’t have to be advanced, flashy, or something written by themselves. It can be good code or not-so-good. It can be Ruby, CSS, JS, test code, server config or anything else. The idea is to get together with our fellow devs and learn a little about what they’ve been thinking about, with the code as the talking point.<br/>

![Dev event 1](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/797aaa1de9ba597a63019f147d959fb0.JPG)
<br/>

Here's a selection of the submissions from May:<br/>

## [Murray S](https://unboxed.co/team/#murray-steele)

I chose this code as it reminded me of similar code that my university lecturer once showed me. This code uses the same features: an array of pointers to functions and use some input value as the index in the array of which function to call on some other input values. The use of language features and the economy of effort is prime proof that you can write code that is aesthetically pleasing, as well as functional.<br/>

```
    #include <stdio.h>

    int sum(int a, int b) { return a + b; };
    int subtract(int a, int b) { return a - b; };
    int mul(int a, int b) { return a * b; };
    int div(int a, int b) { if (b) { return a/b; } else { return 0; }  };

    int (*p[4]) (int x, int y);

    int main(void)
    {
     int result;
     int i, j, op;

     p[0] = sum; /* address of sum() */
     p[1] = subtract; /* address of subtract() */
     p[2] = mul; /* address of mul() */
     p[3] = div; /* address of div() */

    printf("Enter two numbers: ");
    scanf("%d %d", &i, &j);

    printf("0: Add, 1: Subtract, 2: Multiply, 3: Divide\n");
     do {
       printf("Enter number of operation: ");
       scanf("%d", &op);
     } while(op<0 || op>3);

     result = (*p[op]) (i, j);
     printf("%d", result);

     return 0;
    }
```


<br/>
## Cale T

Over the last week I’ve been working on [SH:24](https://unboxed.co/product-stories/sh24), writing lots of ‘yes’/’no’ questions for a new order form. Writing out the same code repeatedly was inefficient, so I extracted the code out and put it into a partial. This has allowed the code to become easily reusable. Any experienced Rails developer will have done this a hundred times before but this was my first experience of the awesome clarity and time-saving capabilities of Rails’ partials.<br/>


<br/>
## [Andrew W](https://unboxed.co/team/#andrew-white)

As part of a project for [Buckinghamshire County Council](https://unboxed.co/product-stories/bucks-cc), we needed to display points on a map using longitude and latitude but the data was stored as OS grid references. To make the conversion I implemented equations supplied by the OS in Ruby which converts from the flat coordinate space of the OS grid to the polar coordinate space of latitude/longitude (commonly known as WGS84). One complicating factor was the fact that the OS uses a slightly different ellipsoid to do the mercator projection which meant applying a 3D transformation between two different ellipsoids.<br/>

![Andrew White](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/9196d40f7f8e5b31314cb31a51b4d5a7.JPG)


<br/>
## [Neil van B](https://unboxed.co/team/#neil-van-beinum)

I've recently been adopting a style of writing specs that makes greater use of `let` and `context` blocks. This leaves the `it` blocks often containing just an expectation or two. I've been finding that writing descriptions for the contexts helps me think about what I want to test and that the overall readability is increased. However, larger spec files seem to require more attention with this approach - it often requires you to scan up and down the file to find  where the spec is being set up. The first example below has all of the setup included within the `it` block while the second snippet makes use of `context` and `before` blocks to keep the setup separate. It also uses `described_class` to refer to the class being tested. Which do you prefer?<br/>

```
context '#invites_emailed' do
  it 'counts the number of invites emailed' do
    arena = create :arena
    set = create :set, arena: arena
    event = create(:event, arena: arena)
    list = set.build_list event: event
    list.save!

    list.invite_factory.create!(zone: event.default_zone, email_sent: true)
    list.invite_factory.create!(zone: event.default_zone, email_sent: false)

    expect(list.invites_emailed).to eq 1
  end
end
```
```
describe CompetitorDrop do
  let(:arena) { create :arena }
  let(:event)  { create :event, arena: arena }

  let(:competitor) { create :competitor, arena: arena, event_for_competition_entry: event }

  describe 'won?' do
    let(:subject) { described_class.new(competition_entry) }

    it 'returns won? from competitor' do
      expect(subject.won?).to eq competitor.won?
    end
  end
end
```

![Dev event 2](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/4970c15c3e3eab6e253f62944cb9fc64.JPG)


<br/>
## [Henry T](https://unboxed.co/team/#henry-turner)

At a glance this query seems to start with something that looks like a function call that takes a `content_id` and returns that `content_id`. What use is that? It's an unusual query but not complicated. Can you see how it works?<br/>

```
WITH RECURSIVE dependents(content_id) AS (
  SELECT '#{content_id}'::TEXT
UNION
  SELECT DISTINCT link_sets.content_id
  FROM dependents
  JOIN links
    ON links.target_content_id = dependents.content_id
   AND links.link_type in (#{quoted(link_types)})
  JOIN link_sets
    ON link_sets.id = links.link_set_id
)
SELECT DISTINCT content_id FROM dependents
WHERE content_id != '#{content_id}'
```

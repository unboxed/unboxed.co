---
date: "2013-05-15 09:32:00 UTC"
published: true
title: "Max attempts for a single delayed_job Job"
authors:
  - "Pawel Janiak"
tags:
  - Rails
---

[Delayed_job](https://github.com/collectiveidea/delayed_job), the asynchronous priority queue system has a well documented configuration for setting the max number of attempts a worker will run for jobs in the queue:

    # config/initializers/delayed_job_config.rb
      Delayed::Job.destroy_failed_jobs = false
      silence_warnings do
        Delayed::Job.const_set("MAX_ATTEMPTS", 3)
        Delayed::Job.const_set("MAX_RUN_TIME", 5.minutes)
      end

There is also a way to get more granular control over attempts at a job level instead of the worker level. This is defined in the [base class](https://github.com/collectiveidea/delayed_job/blob/master/lib/delayed/backend/base.rb) of the gem.

Delayed\_job first checks to see if the payload\_object of a job has a max\_attempts value and if it doesn't it falls back to the max\_attempts value defined in the worker.

So all you have to do is to define an instance method in your payload\_object's class for the max number of attempts for a job:

    def max_attempts; 1; end


Voila!

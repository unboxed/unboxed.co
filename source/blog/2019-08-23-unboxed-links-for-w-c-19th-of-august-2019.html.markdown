---
weekly_roundup: true
title: "Roundup: Interactive tutorial on leveraging SSRF"
date: '2019-08-23 11:30:00 GMT'
authors:
  - 'Ben Baumann'
tags: # (Delete as appropriate)
- Culture

---

## Interactive tutorial shows how easy it can be to leverage SSRF - [Oskar P](/people#oskar-pearson)

https://application.security

This simple interactive tutorial shows how someone leveraged a SSRF error to gain access to 140,000 Social Security numbers, 1 million Canadian Social Insurance numbers, and 80,000 bank account numbers. It leverages the [AWS metadata endpoint](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html) to get access to S3 account credentials.

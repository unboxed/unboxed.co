---
date: '2016-09-30 16:23 +0100'
published: true
title: 'Faster than Lightning: September''s Developer Event'
authors:
  - Neil van Beinum
tags:
  - Culture
  - Innovation
has_syntax: true
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/62e7d29b0fa9aa85264805d31661471e.PNG
---
This month we hosted our regular 'Faster than Lightning' developer talks, where Unboxed developers get together to discuss code that we’ve been working with, and share stories about these with each other. The idea is to get together and have a chat about what we’ve been thinking about, with the code as a talking point.<br/>

![Faster than Lightning 1](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/cc93550225b38c4f8ef2bf57013e4766.JPG)

Here’s a selection of the submissions from this month:<br/>
<br/>

## [Charlie Egan](https://unboxed.co/people/#charlie-egan)

We all place a high value on project documentation and setup instructions, regularly changing projects it's important that this is the best it can be. However, when it comes to setting up _personal_ development environments often the approach is less rigorous. Last weekend I was adding a system tool for use via my editor and decided to write up a [Dockerfile](https://github.com/charlieegan3/dotfiles/blob/85405d3d93ef23374d2d234af525644560156144/Dockerfile) to codify the process. I looked around and found that other's containerized vim setups were all [heavily tailored](https://github.com/JAremko/alpine-vim/blob/master/Dockerfile) and opted to write my own (heavily tailored) Dockerfile.<br/>


<br/>
## [Andrew White](https://unboxed.co/people/#andrew-white)

**Q.** Why does this [template fragment][1] sometimes blow up with an
encoding mismatch error on the second line?<br/>

```erb
<%= open_graph_tag 'url', request.original_url %>
<%= open_graph_tag 'type', 'website' %>
```

when doing the following request:<br/>

```bash
curl -I 'https://petition.parliament.uk/petitions?utf8=✓'
```

**A.** [RFC 3986][2] states that non-ascii characters should be percent-encoded,
i.e the ✓ should be encoded as `%E2%9C%93`. However sometimes clients aren't
well-behaved and on Petitions we were receiving these badly encoded requests
from Android clients.<br/>

The reason the template fragment blows up is because Rack leaves the badly
encoded URL as binary which causes the output buffer to become binary encoded
when the URL is concatenated to it. Then when you try concatenate some more
output you get an encoding mismatch error but it's not related to that line
so you end up scratching your head wondering why it's happening.<br/>

The fix is to make a helper that forces the encoding to UTF-8:<br/>

```ruby
def original_url
  request.original_url.force_encoding('utf-8')
end
```

and use that in your template instead:

```erb
<%= open_graph_tag 'url', original_url %>
```

In some ways we're shooting ourselves in the foot since we're the ones generating
the UTF-8 character to fix a bug in Internet Explorer that's long been fixed. If
you're interested in the gory details google for "rails snowman".<br/>

If you've no need to support older version of Internet Explorer then you may want
to think about turning off that hidden field which you can do by passing the option
`enforce_utf8: false` to `form_tag` and `form_for`.<br/>

[1]: https://github.com/alphagov/e-petitions/blob/9080c2b/app/views/application/_social_meta.html.erb#L18-L19
[2]: https://tools.ietf.org/html/rfc3986

<br/>
![Faster than Lightning 2](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/7f8c7a2f3c62291afca8315cc77d8fba.JPG)
<br/>

## [Neil van Beinum](https://unboxed.co/people/#neil-van-beinum)

This code snippet is part of a work-in-progress project. I’ve been experimenting with creating music using the `Tone.js` Javascript library. I wanted to take a person’s name and convert it into 6 musical notes (from the range A-G). I wanted two similar names to result in very different notes.<br/>

This function is part of a first attempt at this. It takes a hash of the person’s name and then converts any 0 characters to ‘G’s. It then strips out the numbers and attempts to populate the returned array with 6 characters representing musical notes. However, there are a couple of problems including the inability to handle hashes containing no letters. Following a discussion in the session I will look at converting the name into a series of base-7 numbers which represent the musical notes. I will also need to think about how to include  the various flat and sharp notes that are possible.<br/>

```javascript
function leadChordNotes(winnerNameHash) {
  var NUMBER_OF_NOTES = 6,
      chordNotes = winnerNameHash.toUpperCase(),
      notesFromName = [],
      numberOfMissingNotes = 0;

  // Interpret '0' characters as G notes to give us notes across the full scale
  chordNotes = chordNotes.replace('0', 'G');
  chordNotes = chordNotes.replace(/[^A-G]/g, '');

  if(chordNotes.length < NUMBER_OF_NOTES) {
    numberOfMissingNotes = NUMBER_OF_NOTES - chordNotes.length;

    for (var i = 0; i < numberOfMissingNotes; i ++) {
      chordNotes += chordNotes[i];
    }
  } else if(chordNotes.length >= NUMBER_OF_NOTES) {
    chordNotes = chordNotes.slice(0, 6);
  }

  return chordNotes;
};
```

<br/>
## [Murray Steele](https://unboxed.co/people/#murray-steele)

I recently added a [linter](https://github.com/alphagov/govuk_lint) to a project I was working on, and running it produced a warning about this fragment of code:

```ruby
def can_edit_site?(site_to_edit)
  can_edit_sites[site_to_edit.abbr] ||= begin
    gds_editor? ||
      own_organisation == site_to_edit.organisation ||
      site_to_edit.organisation.parent_organisations.include?(own_organisation) ||
      site_to_edit.extra_organisations.include?(own_organisation) &&
      site_to_edit.global_type.blank?
end
```

It was complaing about the wrong indenting.  The linter also has an autocorrect mode so it also fixed the indenting to make the code look like this:

```ruby
def can_edit_site?(site_to_edit)
  can_edit_sites[site_to_edit.abbr] ||= begin
    gds_editor? ||
      own_organisation == site_to_edit.organisation ||
      site_to_edit.organisation.parent_organisations.include?(own_organisation) ||
      site_to_edit.extra_organisations.include?(own_organisation) &&
        site_to_edit.global_type.blank?
end
```

There were many other autocorrected linting violations in the PR I made so I didn't pay much attention to this.  Luckily, someone else on the team did and she asked me why we were getting the extra indent here as it looked odd.  It turns out that the linter wants you to indent an expression if you break it onto separate lines, which is what we'd done, but we hadn't realised that the expression we thought we'd written was more deeply nested than we thought.  [Ruby's operator precedence rules](https://ruby-doc.org/core-2.3.0/doc/syntax/precedence_rdoc.html) mean that `&&` binds more closely than `||`, so we'd introduced a subtle permissions bug.  After working this out we refactored to make the code clearer and ended up with this:

```ruby
def can_edit_site?(site_to_edit)
  can_edit_sites[site_to_edit.abbr] ||= 
    site_is_editable?(site_to_edit) && has_permission_to_edit_site?(site_to_edit)
end

def site_is_editable?(site_to_edit)
  site_to_edit.global_type.blank?
end

def has_permission_to_edit_site?(site_to_edit)
  gds_editor? ||
    (own_organisation == site_to_edit.organisation) ||
    site_to_edit.organisation.parent_organisations.include?(own_organisation) ||
    site_to_edit.extra_organisations.include?(own_organisation)
end
```

What I learned from this was that it's definitely worth reviewing any changes that your linter suggests or autocorrects before accepting them.  You'll learn a little bit more about the style that your linter prefers and hopefully avoid linting errors in future changes.  More importantly, it might be that the linter has exposed something that you didn't fully understand about your code and that the autocorrect is only one possible way to appease the linter.  Often it can be re-written to avoid the linting error but also make the code clearer.

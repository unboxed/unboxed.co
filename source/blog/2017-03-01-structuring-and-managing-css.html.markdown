---
title: 'Structuring and managing CSS'
date: '2017-03-01 11:42:45 UTC'
authors:
- 'Tom Sabin'
tags:
- Culture
- Design
- Rails
- Testing

---

Managing CSS has always been a bit of a free-for-all. We have complete freedom as to how we structure and organise our project’s stylesheets. This is both good and bad. For quick and disposable projects, you just need something to work and you have no intention to come back to maintain it. However, in larger projects, any gains from increased flexibility quickly vanish leaving you longing for some form of structure.

When onboarding new team members, I've experienced challenges stemming from the lack of convention in the frontend. We need something like the "Rails way", a community drive for how to write Rails applications that focuses on convention over configuration. We should be able to drop in and out of projects and know where to make changes with confidence, as we do in Rails at Unboxed.

This article will take you through my journey: **structure** from ITCSS and BEM, **confidence** from a well maintained Style Guide, and **consistency** from code review.

## Structure: ITCSS and BEM

You might already be familiar with these two acronyms, they’re the subject of many blog posts, are well documented and have been vetted extensively. I’ll just give a brief overview of both before we move on.

### ITCSS

ITCSS stands for Inverted Triangle CSS. Put simply, it is a convention for *how* to declare your stylesheets. The main reason I have enjoyed ITCSS so far is for its simplicity. It compliments CSS instead of fighting it. Your styles are split into layers; top layers are far reaching and global, lower layers are localised and specific. It is designed by [Harry Roberts](https://csswizardry.com/) and while there is not a formal writeup by Harry himself, a great write up by Lubos Kmetko can be found here: [ITCSS: Scalable and Maintainable CSS Architecture](https://www.xfive.co/blog/itcss-scalable-maintainable-css-architecture/).

### BEM

BEM compliments ITCSS's Object and Component layers. BEM stands for [Block Element Modifier](http://getbem.com/introduction/). It is a CSS class naming convention. The purpose of BEM is to give you confidence in your named styles. It's restrictive when it needs to be, but also simple and flexible.

The two combined together is a perfect match. ITCSS provides organisation to the different stylesheets and partials, while BEM is applied to the Objects and Components layers to encourage declarative naming.

In practice, this is how ITCSS looks like in a Rails project. We use SASS partials to include files in the order that the CSS architecture dictates.

```CSS
// app/assets/stylesheets/application.scss

// We are following a pattern called ITCSS (Inverted Triangle CSS). ITCSS's
// concept is based mainly around layering on styles based on their reach within
// the DOM. We are also using this in combination of BEM and name spacing.

// Generic, far-reaching, low specificity styles are declared first:
// Settings: Global variables, config switches.
@import "settings.global";
@import "settings.colors";
@import "settings.fonts";

// Tools: Default mixins and functions.
@import "tools.mixins";

// Generic: Ground-zero styles (Normalize.css, resets, box-sizing).
@import "generic.box-sizing";
@import "generic.reset";

// Elements: Unclassed HTML elements (type selectors).
@import "elements.page";
@import "elements.headings";
@import "elements.paragraphs";
@import "elements.lists";
@import "elements.links";

// Objects: Cosmetic-free design patterns.
@import "objects.layout";
@import "objects.section";

// Components: Designed components, chunks of UI.
@import "components.image";
@import "components.cookie-consent";
@import "components.page-header";
@import "components.page-navigation";
@import "components.page-footer";
@import "components.callout";
@import "components.form-field";
@import "components.form-label";
@import "components.form-input";
@import "components.form-errors";
@import "components.button";
@import "components.panel";
@import "components.flash-message";
@import "components.notice";
@import "components.postcode-form";

// Helpers: Helpers and overrides.
@import "helpers.background-colors";
@import "helpers.text";

// Explicit, localised, higher specificity styles are declared last.
```

Finding this in the application.scss, the first calling point for style changes in a Rails app, helps guide new team members when they come to make CSS changes. They might be curious as to what each layer is and will ask their peers about it or Google for ["what is ITCSS"](http://lmgtfy.com/?q=what+is+ITCSS).

## Confidence: A well maintained Style Guide

<style>
  @media (min-width: 660px) {
    #example-style-guide-image {
      float: right;
      width: 200px;
      margin: 0 0 10px 20px;
    }
  }
</style>

<img id="example-style-guide-image" src="/assets/images/blog/css-itcss-bem-style-guide-sections.png" alt="Style guide sections">

ITCSS not only provides structure to your stylesheet declarations, but it has also helped us structure to our style guide. We have separated the style guide into sections on a single page. A section for each layer: Elements, Objects, Components and Helpers. In hindsight, we should add the Settings and Tools layers in as well to match full ITCSS layering.

Maintaining the style guide is difficult, there's no doubt about it. I've been toying with the idea of "style guide driven development" to ensure that the component that you are adding/editing will have a "test" left behind to document it.

### Style Guide Driven Development

Your style guide is a playground, a sandbox. You can build your component up to fit the requirements with sample data. When you've constructed your desired result, place the component on the page you require it and make some fine tunings with the actual content. The style guide should reflect the fine tunings if you've documented it correctly.

By having the component in isolation, it should make you think about edge cases and how the component could be used in different situations. Obviously there's a line you'll need to draw between making it reusable and generic, versus a bespoke component for one use case. Making that judgement is not easy but your styles can easily be refactored and updated.

### Documentation

Similarly, as with applying the ITCSS structure to the style guide, we can also use BEM to drive the documentation of our components. We can describe use case and variants (*modifiers*) that can be used, but also **when** to use them; give examples context of other components and/or objects, or display the component in different states and content lengths.

![section layer: the panel class](/assets/images/blog/css-itcss-bem-panel.png)

### Testing

When the style guide covers range of examples, the style guide becomes a great starting point when testing across your supported browsers. You'd easily spot problems when you have numerous examples declared.

The style guide becomes your integration tests on the front end. It won't and shouldn't replace regression testing across your website, but it should help increase your confidence. You could even tie in a visual regression test framework such as [Wraith](https://github.com/BBC-News/wraith) to automate the process. Take it further and tie the output of that into your continuous integration platform for red/green builds: Wraith, for example, exits with a system error code if the screenshot diff is above the threshold you specified.

## Consistency: Code review

At Unboxed we perform peer reviews when a story has finished development. I’ve found that front end decisions tend to get brushed over and are often put down to personal preference. This makes the front end a mess of opinions and inconsistencies. However; when starting a project with the practices described above, there is a structure to review against from day one.

It can be tough for new team members uncertain of the style-guide-driven front end process. A peer reviewer should guide them through it and it’s often best to pair on the first few reviews.

There needs to be a champion of the style guide, ensuring that it is getting the attention it needs. An automated solution could aid this but it won't be a replacement.

---

In summary, ITCSS has provided a much needed structure for the front end. It’s also provided a structure for our style guide and combined with BEM, we are encouraged to document how to use the designed components. However, there needs to be somebody responsible for ensuring that the style guide is kept up to date and that the front end process remains in place during code reviews.

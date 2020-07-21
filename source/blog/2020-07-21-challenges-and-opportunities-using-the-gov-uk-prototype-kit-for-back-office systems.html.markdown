---
title: "Challenges and opportunities: Using the GOV.UK Prototype Kit for back office\_systems"
authors:
  - Claudia Hopkins
tags:
  - Design
  - Interaction design
  - design system
  - GDS
  - Plantech
  - Local Gov
main_image: >-
  https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/0723c899f16cc2b9c15e996050dc9c6b.png
date: '2020-07-21T10:52:23+01:00'
published: true
---
# Background

The [GOV.UK prototype kit](https://govuk-prototype-kit.herokuapp.com/docs) is a great tool for creating accessible, interactive prototypes for public services. It ensures a quality of standard when creating  coded prototypes that would be harder to achieve if building from scratch every time, especially in fast-paced environments.

Although the GOV.UK prototype kit is designed and built for public facing, transactional services, **I am using the kit to create a Back Office Planning System. **Our users are planning teams from local councils across the UK; they review and approve or refuse housing proposals that citizens want to build. Because the project is for many local councils, it is funded by a central government department, Ministry of Housing, Communities & Local Government (MHCLG); thus, using the GOV.UK branding fits well from a systems level.

Using [GOV.UK design patterns](https://design-system.service.gov.uk/patterns/) and following the [Government Digital Service (GDS) service standard](https://www.gov.uk/service-manual/service-standard) is not mandatory for back office systems or for local council websites, but implementing both can be well suited. I chose to use the GOV.UK prototype kit to optimise my time within iterative design sprints and collaborating with the development and product team to determine and deliver MVP features. However, because the prototype kit and patterns have been created for the public, throughout this process, I have found some challenges and overcome them by finding opportunities.

# 1. Maintaining consistency

## Challenge:

I have used the prototype kit for two different projects that were both for back office systems. In both cases, it was challenging to maintain consistency of pages when prototyping multiple use cases to test throughout various iterations.

With back office systems especially, certain patterns, like an accordion, may appear on multiple pages because the user may need certain information or capabilities. As the prototype kit builds each as separate HTML pages, it then brings in much redundancy.

![3 web page screenshots showing that the same page template is being used.](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/4ca8b7ce16395c555d7aefdb2eba378f.png)

<i>On multiple pages, the same accordions and page templates are used.</i>

If I altered the accordion template for the prototype, I would then have to **change up to 400 lines of code** that are dispersed in multiple sections of code. Often when copying and pasting accordions from these pages, this would result in having too few </div> or too many, causing my columns to collapse. And if I forgot to iterate upon one accordion on a page, the participant during user testing would be the first to find it!

![A webpage screenshot where the template is mapped against the pieces of code. This shows the amount of redundant code used](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/0723c899f16cc2b9c15e996050dc9c6b.png)

  <i>The accordion templates require a lot of code that is distributed throughout the page. This makes it difficult to edit the accordion on all pages without making an error.</i>

## Opportunity:

Through mentoring and collaboration sessions with the developers on my team to increase my understanding of production code, I discovered what a partial is! Partials include bits of code that can be reused across multiple HTML files. By creating and using these templates, the amount of redundant code in all the files is reduced. The GDS prototype kit already uses partials through a templating language called nunjucks; this is used to put the GOV.UK headers and footers on every page.

![The first section is the longest piece of code. On the right of a black line there are 4 files of code to show each's length.](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/35b1089ffd0b4828152c0c35f7a77c03.png)

 <i>On the left is the code originally, and to the right is the code, and 3 nunjucks files.</i>

Melissa Real from our dev team unpacked how to create new, customisable nunjucks templates and taught me. Now I integrate 3 different partials into my prototypes, which involves 7 lines of code on each HTML page (instead of 400). And if I need to update the accordion, I go to that template file and it's updated across the whole prototype.

Tracking how these partials change over time based on user research is still important, so I have created different versions of partials by naming the nunjucks files based on versions. In the HTML pages itself, the header calls the specific versioned file, but within the body of the HTML, I have kept a common name. This enables me to change the versions in the headers, while not having to adapt the HTML code below.

If you want to see the code to create your own templates, you can see the resource links at the end of the blog.

# 2. Varying devices and screen sizes

## Challenge:

Planning officer's tasks, needs and environments vary. 

**Pre-pandemic: planning teams could only access their back office systems at their office computers** and did not tend to work from home. At their offices, they have quite large screens and sometimes two monitors to compare plans. For our MVP, the columns and margins built into the GOV.UK prototype kit do not include breakpoints for larger screens. **The space is therefore not used effectively.**

![A screenshot of the website on a widescreen with a lot of unused, white space in the margins.](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/fb8c2c82cdd37064dd76316f99aaf8ee.png)

<i>On a wide screen, the space is not utilised well when a planning officer wants to assess an application.</i>

**Given COVID-19, they are working from home** and accessing systems by VPN. Their experience differs widely- some officers have two screens, some are using 13 inch laptops. 

Making the system adaptable to both environments will be essential to allow a flexible working environment. 

**To assess proposals pre-pandemic, planning officers conduct site visits but they cannot access their systems on their phones or tablets. **Instead, they take photos on their phones, and upload them onto their office computer through USB or email, and then onto their back office system's document management system. Their systems are not responsive or cloud-based.

**With COVID-19, they are conducting virtual site visits** by getting neighbours to send photos, videos or chat with them live. 

It is unknown how their processes will change after the pandemic and if physical site visits will be as predominant as before. However, we know that **mobile will be needed.** There are a few GOV.UK design patterns that don't work well for mobile, such as the tabbed tables. For public facing sites, it is possible that they are less data heavy overall, and these tabs would collapse better in those situations. However, in back office systems, they can be more data heavy. 

## Opportunities:

Given the large screen space available at offices, I was tempted to change the margins and widths to better suit larger screen sizes for the MVP (minimal viable product). However, when testing the product, the current set up works well for planners who are working from home due to COVID-19. It seemed best to prioritise and test the design for a more constrained layout before widening too. 

![A gif of using the tabbed lists on a mobile. The user has to horizontally and vertically scroll to find out information.](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/f776e747ea5e81dd00b6855727efd342.gif)

<i>When on a mobile, seeing the information in the table requires horizontal and vertical scrolling.</i>

We will release the Beta with the default layout, and gather data and feedback on its use. Next we can utilise any feedback to then optimise it  for wide screens by including a new breakpoint and layout.

For mobile devices, right now, the tabbed information comes off the page and they have to use a horizontal scroll to see more information; however, the hidden information may not be necessary to identify the property from the list. I hypothesise that the visible columns are essential to identify the application. We will need to do more testing on mobile to validate this or understand what information officers will need to conduct a site visit.

# 3. Branding

## Challenge:

Initially, we were unsure how users would react to the GOV.UK design patterns for a back office system. We were worried that they would assume it was a public-facing site.

I planned to create different CSS skins for councils that altered the header colour, logos and adapting typefaces. This could be a sustainable way for local councils to create services and applications by borrowing from the GOV.UK system, yet customise it for their citizens.

## Opportunities:

Overall, testing with the GOV.UK branding has gone better than anticipated. We have only had a few comments about the GOV.UK crown and header that made them think it was public facing. Since then, I replaced the crown and GOV.UK header on the far left of the header with 'Back Office Planning System'.

![Two website screenshots showing how the GOV UK branding was altered](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/39f7e80f3eb3581bc177748c70c03dda.png)

<i>The Crown and GOV.UK has been removed to mitigate any confusion that this is a public facing site.</i>

To our surprise, there was no expectation from user research participants that a council logo needs to be embedded on the header; however, they expect public facing artefacts, like decision notices, to have a logo because the public receive it. Here, there should be council specific information and stamps of approval.

![A webpage screenshot with a decision notice and local council's details.](https://s3-eu-west-1.amazonaws.com/unboxed-web-image-uploader/93ea0cd89416b89914e54d8eee5f5777.png)

<i>The decision notice is shown on the Back Office System so that planning teams know what applicants will receive. User research participants have commented about the need of the council's logo because it is a public facing artefact.</i>

Therefore, based on our findings, it is not necessary to incorporate local council skins unless it's a public facing site.

# Ending notes

The GOV.UK prototype kit can be versatile for back end systems. Learning about Nunjucks and the capabilities of the prototype kit has been valuable. I look forward to continuing with using the kit to improve upon my coding and passing data, and seeing how we can further adapt the kit based on our users' needs and experiences.

If you have any questions about the templates or about using the GOV.UK prototype kit, feel free to contact me at: [claudia.hopkins@unboxed.co](<mailto: claudia.hopkins@unboxed.co>)

# Resources:

## Partial examples: 

**GitHub:**

<https://github.com/unboxed/Beta-Bops-Design-Prototypes>

**HTML pages with custom templates:**

V08:

* beta-bops/app/views/customnjk/right-accordion-fh-v08.njk
* beta-bops/app/views/customnjk/left-accordion-fh-v08.njk
* beta-bops/app/views/v08/full-householder-hp.html
* beta-bops/app/views/v08/fh-site-visit.html

V09:

* beta-bops/app/views/customnjk/right-accordion-fh-v09.njk
* beta-bops/app/views/customnjk/left-accordion-fh-v09.njk
* beta-bops/app/views/v09/full-householder-hp.html
* beta-bops/app/views/v09/fh-site-visit.html

---
layout: post
title: ‘Can someone explain why BBC One is covered in CSS?’
date: 2018-02-28 21:20:00 +0000
---

The BBC has a new pair of bespoke typefaces, [Reith Sans and Reith Serif](http://www.bbc.co.uk/gel/articles/introducing-bbc-reith).
They're quite nice.


I'm surprised that no private media organisations have "slammed" the "feckless corporation" for "staggering waste" over this.
Or even just taken the piss out of some of the language in the Global Experience Language guidelines, which [can be an open goal sometimes](https://www.theguardian.com/media/mediamonkeyblog/2010/feb/22/1).
Of course, some say [they could have made do with something free from Google](https://twitter.com/RayMcCarthyUNO/status/964109704225050624).
The BBC behemoth must be cut down to size!
Actually, the BBC expects to _save_ money compared to licensing off-the-peg typefaces like Gill Sans -- so there.

So far, only [BBC Sport](https://www.designweek.co.uk/issues/14-20-august-2017/bbc-sport-rebrands-dropping-100-year-old-typeface-bespoke-one/) is using the new fonts.
BBC Weather isn't, despite having been mucked around with[^1] more recently.
We'll just have to wait.

---

Searching Twitter for stuff about that, I found something completely different:

<blockquote class="twitter-tweet" data-lang="en-gb"><p lang="en" dir="ltr">Anyone know what causes this? Only on <a href="https://twitter.com/BBCOne?ref_src=twsrc%5Etfw">@BBCOne</a> and <a href="https://twitter.com/BBCTwo?ref_src=twsrc%5Etfw">@BBCTwo</a>. Can&#39;t seem to get it to go away. Looks like code of some type. <a href="https://t.co/QVODzsJ7cD">pic.twitter.com/QVODzsJ7cD</a></p>&mdash; David Jones (@schnuckster) <a href="https://twitter.com/schnuckster/status/965682182684594177?ref_src=twsrc%5Etfw">19 February 2018</a></blockquote>

What.

<blockquote class="twitter-tweet" data-lang="en-gb"><p lang="en" dir="ltr">CSS is love, CSS is life. <br><br>On a more serious note, can someone explain why BBC 1 is covered in CSS? <a href="https://t.co/Nv3wQPKFmA">pic.twitter.com/Nv3wQPKFmA</a></p>&mdash; Adam Brown (@ouchadam) <a href="https://twitter.com/ouchadam/status/968208248846389249?ref_src=twsrc%5Etfw">26 February 2018</a></blockquote>

<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

The fuck.

The pictures show some minified cascading style sheets, obscuring an FA Cup match, <cite>Only Connect</cite>, and some other programme a week later.
Let me be clear: this is not one of the quite interesting usual examples of [source code in TV and films](https://moviecode.tumblr.com/).
This isn't supposed to relate to the plot of the fifth round of the FA Cup.
This is, surely, a bug.

Some of the styles in the mention Reith Sans, so we can assume the CSS was written by the BBC.
The big flat screen in the bottom image has a Panasonic logo on it.
It is known that these modern smart TVs all use bastardised web browsers so cross-platform software can be more easily shovelled across platforms.
I _guess_ there's a missing `</style>` tag somewhere.
Apart from that, I have no idea.

It's an accurate observation that [_incident reports_ can be well-written and useful](http://russelldavies.typepad.com/planning/2017/05/wannacrypt-incident-report.html).
I would be _fascinated_ to read an incident report about whatever's happened here.

<hr class="hr" />

[^1]: ["People aren’t happy with the BBC’s big weather redesign"](https://www.engadget.com/2018/02/06/bbc-weather-met-office-redesign-meteogroup/) is the most predictable headline. Oh dear. But one crumb of compensation: the northern bit of the landmass now looks proportionately bigger, to the delight of people who live there.

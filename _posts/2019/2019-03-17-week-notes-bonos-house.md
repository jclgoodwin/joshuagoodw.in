---
layout: post
title: "Week notes: Bono's house"
date: 2019-03-17 21:51:00 +0000
---

This week, it has been mostly windy. Still, I managed a to ride on a bicycle two decent distances without being blown into a hedge. Maybe it's at times like this that the memory of sailing lessons -- tacking and jibing, etc -- comes in useful.

I went past [Bono's house](https://www.youtube.com/watch?v=ew4wrtl01PA).

![Blickling Hall](/images/blickling-hall.jpg)

Photographing buses and coaches in rural places is an endless source of fun, but the results were all rubbish this week. Oh well. My excuse is that it's hard to stand up and hold a camera straight in high winds.

I managed to do some work. Here's a bug I thought would be intereresting to write about here, but quickly realised wouldn't. Sometimes I need to make the computer calculate the bearing/heading/direction of a bus, to make the little arrow on [the big map](https://bustimes.org/vehicles) point in that direction. I do so with some trigonometry I copied and pasted from somewhere, and it works -- but recently sometimes it hasn't been. In a half-awake state this morning, it dawned on me why not: sometimes it's calculating the angle between two identical pairs of coordinates, because somewhere I'm making the computer compare a string representation of a datetime with a `datetime`, and they're never equal. A classic mistake. Cool story, bro.

My cultural highlight of the week is the stylish thriller [<cite>Deutschland 86</cite>](https://www.channel4.com/programmes/deutschland-86). So far, it is stylish and thrilling. It reminds me I can't remember much of <cite>Deutschland 83</cite> now, but does that matter? I don't think it matters.

--- 
layout: post 
session: '08' 
date: '2017-02-07' 
category: 'Users' 
title: 'Users imagined and real' 
tags: [users, misconceptions, research, analysis, GNURadio, VirtualBox, Kali] 
noreading: true
--- 

Today we're going to do two things: 

1. Make sure that we are all up and running with VirtualBox, Kali, and GNURadio. 
2. Actually do a walk through with Erica and set up a receiver on our own devices. 

Today we become the user. We'll want to keep some questions in mind as we do. 

<excerpt/>

# Interaction Questions

These are derived from {% cite Miller2015-qa --label page --locator 27 %}

1. When would you use this GNURadio?
2. Outline the tasks that you perform to work with GNURadio (get specific).
3. How do you do you know what device you are interfacing with?
4. Where would you start?
5. What would you do next?
6. Could you show someone else how you do that?
7. What information do you need to complete this task?
8. Is any part of this process difficult or frustrating?
9. Is the result or the process what you were hoping for?
10. What’s the most enjoyable part of this process for you?

We will answer each one of these in turn as we go through today's activity. 

# Set up a receiver to listen for a signal

Erica took us through setting up to receive on our RTL-SDR USB sticks a broadcast from her BladeRF device. 
I will post working GRC files later this week so that you can open them up yourselves and explore what it going on inside. 

The basic setup consisted of several parts:

1. A source
2. A sink
3. A demod(ulator)
4. A filter
5. A scope

Review what all of these do, where to currently find them, and what they all mean. 
Multiple teams in the class will benefit from having these added to a glossary on our wiki. 

This experience should be eye-opening as to how complicated and unwieldy our task actually is. 

We want to be able to make this simple setup actually seem simple and actually help a user get up and running for the first time. 

# Make an FM radio

Now that you are all officially novice users, try exploring some other things that you can do with this interface.
Sometimes learning by example is the easiest way of getting started. 
Making something that someone else has made and exploring and analyzing their method is crucial for understanding how to help others do the same. 

For example: ou can use your RTL-SDR USB sticks to make receivers of a variety of sorts. 
Others have done it, which means that you can too. 

Try your hand at making a working FM radio receiver by following [this tutorial from v3l0c1r4pt0r](http://v3l0c1r4pt0r.tk/2013/11/01/using-gnu-radio-companion-simple-fm-radio-tutorial/). 
Once you are through the tutorial, you should have something that "works." 
One of the tarred GRC files in v3l0c1r4pt0r's works better than the other.
Download them and see if you can spot the diffrences and figure out what the blocks and settings are doing. 
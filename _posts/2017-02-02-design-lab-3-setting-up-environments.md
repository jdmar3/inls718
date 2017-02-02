--- 
layout: post 
session: '07' 
date: '2017-02-02' 
category: 'Design lab' 
title: 'Design lab 3: Setting up environments' 
tags: [users, research, profiles			
] 

--- 

We're going to try today to set up environments so that we can start playing with hardware and looking at existing interfaces. 

<excerpt/>

First things first: what are we doing?

We are installing a working Linux distribution inside virtual machine to allow all of us to work in the same development environment. 

As we saw in class today, there is compelling reason for this since it was very difficult to even get us all running the same things. So. I will split the steps below for Windows users and Mac users (since everyone in the class falls into one of these two categories). 

# VirtualBox

## Windows instructions

First download and install VirtualBox. 
It is available for Windows <a href="http://download.virtualbox.org/virtualbox/5.1.14/VirtualBox-5.1.14-112924-Win.exe">here</a>. 

Run the installer, click next to use the default settings. 

At the end it may ask you if you want to install a new version of the Extension Pack. 
You do want this. 
The extension pack is what allows you to access the USB from inside the virtual machine. 

## Mac instructions

First download and install VirtualBox. 
It is available for Mac <a href="http://download.virtualbox.org/virtualbox/5.1.14/VirtualBox-5.1.14-112924-OSX.dmg">here</a>. 

# Kali Linux

Once we have VirtualBox installed, we will need to get and import a disk image for Kali Linux. 

For 64-bit systems download <a href="https://images.offensive-security.com/virtual-images/Kali-Linux-2016.2-vbox-amd64.ova">this OVA file</a> from Kali. 

For 32-bit systems download <a href="https://images.offensive-security.com/virtual-images/Kali-Linux-2016.2-vbox-i686.ova">this OVA file</a> from Kali. 

You *should* probably use 64-bit. 

In VirtualBox select **File > Import Appliance...** and then select. 

Start up the virtual box. Login with *root* as the user and *toor* as the password. These are the default. 

Once inside Kali Linux, open a terminal and type the following commands:

*apt-get update* #This updates the software repositories.

*apt-get upgrade* #This updates the installed software packages.

*apt-get gqrx* #This installs GNURadio.

*apt-get kali-linux-sdr* #This installs other SDR-related packages.

Now you should be able to go to open GNURadio companion and get started!

# For Next Time

We're going to make sure that everyone is up to speed on this when we start next time and then we are going to hae you all try out setting up GNURadio and catchin a signal that Erica transmits. This will give us some experience of being a novice user ourselves and help us reflect on the needs of existing and new users. 

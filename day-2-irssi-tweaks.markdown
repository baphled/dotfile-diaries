IRSSI Tweaks
============

So I've in the previous posts I've setup irssi and setup twirssi so that I can
keep up to date with my tweets without having to deal with a GUI.

Now I want to tweak my settings so that I can open links easily and have a few
more channels setup in hidden windows.

I'd also like to setup vim-mode for irssi

vim-mode
--------

Doing this is quite easy, we'll use [http://raw.github.com/shabble/irssi-scripts/master/vim-mode/vim_mode.pl](vim-mode.pl). Once install we'll need to run the following in irssi.

    /statusbar window add vim_mode
    /statusbar window add vim_windows

This will help you to know when you are in Insert or Command mode.

There's heaps of documentation on vim-mode via the source file, so delve in and
start hacking. Admittedly I'd love it if it took my vim settings but hell, it's
not too much hassle to setup mapping for the most important things :)

Grabbing links
--------------

I want to a way to handle links, their everywhere and their useful, to do this
I'll use bjurl.pl to highlight links and give me the ability to open and copy
them.

I used this version of
[http://raw.github.com/sukima/bjurl/master/bjurl.pl](bjurl). I'll copy it to
the usual place (`~/.irssi/scripts/autorun`) we can than run the script and we
have a nicely highlighted URL's :D

To open files we'll need to do some more configuration, as I'm on a mac, I'll
download Lynx and get it to open in a new tmux window. We'll setup our browser as lynx as it's a command line browser.

Instant Messagers
-----------------

This seems to be my go to IM atm so lets get that setup with irssi.

`brew install bitlbee`

Need to get connect to the server

    /connect bitlbee1.asnetinc.net 6667
    account add jabber <account>
    /OPER

You can now add your password

    account on

And we're connected :)

Next we'll work out how to display who is online and how to chat to others.

Resources
---------

[http://pthree.org/2008/03/04/static-windows-in-irssi/](static windows)


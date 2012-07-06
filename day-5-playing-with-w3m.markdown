Playing with w3m
================

So we've got Lynx setup to work with irssi, after doing so I found out
that w3m can deal with tabs and images. Admittedly I'm not particularly
a fan of tabs, mainly as I tend to build up quite a collection of these
and never really go back to them, but I'll give it a whirl and see what
thte pros and cons of it as opposed to lynx.

As always I used brew `brew install w3m` to get things rolling.

So this is what w3m looks like out of the box.

![default setup](https://github.com/baphled/dotfile-diaries/raw/master/screenshots/w3m-default.png)

Off the bat the colours are all wrong, trying to red blue text is near
impossible when using a black background, so that had to be changed.

The other issue was that though I still had my vim keys I could not use
<C-B> and <C-F> to move around, which is annoying, that'll have to be
changed too.

HOW DO I CHANGE THE BINDING?
[manual](http://w3m.sourceforge.net/MANUAL)

I also couldn't see URL's at all.

I guess the first step is to work out how to customise w3m so that we
can get those colours sorted and give it some vim love.

Ok, so changing the settings is quite easy to get to, simply press `o`
whilst having w3m open and the settings page will be displayed. We
simple need to scroll down to 'Colour Settings' and specify the colours we desire.

Viewing links it's just as easy as interacting with any other link so
that's cool :)

The only things that niggles me is not being able to set up leader key 

The most important once for the moment are to page up and down quickly
as the default mappings are quite a stretch.

Add the below to the keymap file within ~/.w3m gives me the ability to
do exactly this :)

    keymap  F     NEXT_PAGE
    keymap  B     PREV_PAGE

Resources
=========

[w3m](http://w3m.sourceforge.net/)

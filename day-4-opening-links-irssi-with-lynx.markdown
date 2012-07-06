Opening links irssi with lynx
-----------------------------

Yet another day of tweaking my irssi rig, today I want to get Lynx to open in a
new tmux window when I select a link. I'll use tmux to do this as it's what
it's good at and I'll get bjurl to call tmux when ever I select a link for
viewing.

Again the goal here is to move more of my work flow into my terminal which will
allow me to deal with content when I choose.

First off we need to actually be able to easily see links and open them,
we'll use [bjurl](http://github.com/sukima/bjurl/blob/master/bjurl.pl) for this.

As with most plugins this is as simple as downloading the script and
adding it to your irssi script directory.

If your already running irssi run `/run bjurl`.

As I'm using a mac, I needed to to set the `browse_command` settings to
open links just how I want it to.

First we need a new tmux window to start lynx in.

    tmux new-window -t workbench -s interwepts

We'll need tell bjurl to behave as we want: 

    /set browse_command tmux send-keys -t interwepts 'lynx $1' C-m

And that's pretty much it for now, we can now load links within our current session :)

It would be cool if we had a separate session strictly for browsing, that
way we don't have to clutter the current session.

This and a few other things will be the next step for improving this work flow
but lets take small steps and see where this path leads up :)

For later
---------

It would be cool if we could name our window accordingly and not have to deal
with the many windows issue I have with chrome and many other browser at
present. This only leads to a sluggish computer and "Tab overload"

I also need bjurl to be a bit smarter in identifying links, it's hard to track
links once 20 have been displayed, at present it's quite useless.

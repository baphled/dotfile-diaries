Setting up vim-mode
===================

Now where would we be if we didn't have a favourite text editors key settings
available in irssi, that'd be heaven right, we'll it's pretty damn easy to get
this going and to add your own mappings, which is wicked, though it'd be even
better if we could just pull in our mappings from vim itself but that's for
another day.

For now we'll just setup vim-mode for irssi, which is easy as hell, and get it
setup so that we can take advantage of some of the key bindings I've gotten
used to.

We'll get that from
[http://raw.github.com/shabble/irssi-scripts/master/vim-mode/vim_mode.pl](here).
We'll also grab uberprompt which vim-mode depends on for some extra
[http://raw.github.com/shabble/irssi-scripts/master/prompt_info/uberprompt.pl](vim
like) functionality.

Once downloaded and added to your autorun directory we're pretty much good to
go. Run the following:

    /run vim_mode

Then we should be good to go :)

The source file has heaps of information, much of which I've not had the chance
to read through properly yet, on how to get started and set things up just how
like. So take look at that and determine what is the best for you :)

For the lazy, like me, here's what I've done so far to get started.

    /statusbar window add vim_mode
    /statusbar window add vim_windows

We'll want to save these changes

    /save

Again there is heaps of documentation on vim-mode which I haven't played around
with, I'll leave this for now and move on to adding some more niceness to
irssi.

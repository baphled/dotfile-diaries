Setting up vim-mode
===================

Now, where would we be if we didn't have a favourite text editors key settings
available in irssi.

That'd be heaven right, we'll it's pretty damn easy to get this going and to
add your own mappings, which is wicked, though it'd be even better if we could
just pull in our mappings from vim itself but that's for another day.

For now we'll just setup vim-mode for irssi, which is easy as hell, and get it
setup so that we can take advantage of some of the key bindings I've gotten
used to.

We'll get that from
[here](http://raw.github.com/shabble/irssi-scripts/master/vim-mode/vim_mode.pl).
We'll also grab uberprompt which vim-mode depends on for some extra
[vim like](http://raw.github.com/shabble/irssi-scripts/master/prompt_info/uberprompt.pl)
functionality.

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

    /layout save
    /save

Again there is heaps of documentation on vim-mode which I haven't played around
with, I'll leave this for now and move on to adding some more niceness to
irssi.

At present these are the mappings that I've setup to get started with

    map <C-H> <BS>
    map <Leader> ,
    map <Leader>p :bprev
    map <Leader>n :bnext
 
 I remapped the leader key to the `'` as this is what I have setup in my vim. I
 also setup `:bprev `and `:bnext` so that I can easily move around to the next
 and previous windwos within irssi.

 It would be nice to create a binding for specifying a window to navigate to
 but I'll leave this for another time.

 I could also setup bindings for navigating between split windows by adding the below mappings to  `vim_moderc`

    map <leader>,k <C-w>k
    map <leader>,j <C-w>j
    map <leader>,h <C-w>h
    map <leader>,l <C-w>l

We'll also want to add bingins for navigating. Irssi uses <ESC> # to navigate
to a given window, as we have vim-mode setup <ESC> is used to change vim modes
so we'll need to remap these so that they would with the new setup.

    MAPPING TO BE ADDED LATER

Making `<esc>` has been remapped we should be able to easily move around
windows without having to rely on our newly created `<leader>p` and `<leader>n`
keys.

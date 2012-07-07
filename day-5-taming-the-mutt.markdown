Taming the mutt
===============

I'd like to use mutt for dealing with my email, AppleMail is cool but
it's way too much for my liking and I'd prefer it if I could organise my
emails without having to fiddle with sub folders manually.

I my old config this was done by using procmail to create/send emails to
folders dependant on the source of the email.

This was pretty configurable so I'd like to get some of this back into
my current setup so that I don't get email overload :)

Setting things up
-----------------

I had a better setup a while back but after rummaging around for ancient backups I decided to start from scratch.

Again, I'll be using brew to get mutt installed `brew install mutt`

You'll need to run the following commands:

    mkdir -p ~/.mutt/cache/headers
    mkdir ~/.mutt/cache/bodies
    touch ~/.mutt/certificates

Next I needed to create a `.muttrc` file, to setup my GMail account. I
used this example [here](http://github.com/baphled/dotmutt/raw/master/muttrc) to get things started.

I had to make a few tweaks to get things just right. Firstly the order
of the emails were newest at the bottom which is kind of annoying, I'd
like to see my newest emails first, so this needs to be sorted.

We'll hold out on that for the moment and customise the look of mutts, I
stumbled upon
[this](https://raw.github.com/l0stman/muttrc/master/mutt-colors-solarized-dark-256.muttrc)
theme that works pretty well for the moment so I'll go with that for now.

Now back to the matter at hand, how to get the sort order setup so that
my newest emails are displayed first.

So I had to go into my muttrc file and make this changes


    set sort_aux = 'reverse-date'

And make sure I also had the following in my config too:

    set sort = 'threads'

Mutt is now setup, well enough to start playing around, I'll work on
integrating this into my workflow as time goes on.

TODO
====

  * Improve the way I'm handling my email credentials

Resources
---------

  * [My first mutt](http://mutt.blackfish.org.uk/)
  * [mutt manual](http://www.mutt.org/doc/manual/manual-2.html)
  * [GMail example for UK users](http://lifehacker.com/5574557/how-to-use-the-fast-and-powerful-mutt-email-client-with-gmail)

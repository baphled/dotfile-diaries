Day 1
=====

So this is the first day of an on going process devised by myself to help
improve and tweak my existing workflow.

For years I've been used to living in the console and staying away from GUI
type tools to do my day to day work

So the idea is to move back to my console and improve my workflow by tweaking
and getting to know my console tools better.

In this blog I'll start with something simple, as the days progress I create a
blog describing what I've learnt today and how it improves my day to day
workflow.

Today is an easy day, I'll start with setting up irssi, a command line
interface for IRC.

What I want here is my old setup tweaked to make it easy to change channels and
see is in a room.

Installing
----------

I'm using a Mac and use brew. So it is as easy as running `brew install irssi`.

Job done!

Configuring
-----------

I look to see all the most important information right in front of me, so my ideal IRC client looks something like this:

---------------------------------------------------
|         Title here                              |
|_________________________________________________|
|         User list                               |
|_________________________________________________|
|        Private message                          |
|_________________________________________________|
|                                                 |
|    Chat window here                             |
|                                                 |
|                                                 |
|                                                 |
|                                                 |
|                                                 |
|                                                 |
|                                                 |
|                                                 |
|||||||||||||||||||||||||||||||||||||||||||||||||||
|  Type cool stuff here                           |
---------------------------------------------------

Unconfigured, irssi looks like this:

---------------------------------------------------
|         Title here                              |
|_________________________________________________|
|    Chat window here                             |
|                                                 |
|                                                 |
|                                                 |
|                                                 |
|                                                 |
|                                                 |
|                                                 |
|                                                 |
|                                                 |
|                                                 |
|                                                 |
|                                                 |
|||||||||||||||||||||||||||||||||||||||||||||||||||
|  Type cool stuff here                           |
---------------------------------------------------

Which kinda sucks!, where's a list of who is online?

First things first, [http://quadpoint.org/articles/irssi/](is a good place to start).

I'll use some tips from there to get myself started.

We need to create a scripts directory for scripts we want to autoload.

I use freenode quite a bit, so lets add that to my default.
`/server add -network freenode irc.freenode.net`

This will save us from having to add the FQDN and refer to it as an alias, freenode in this case.


REFER TO HILIGHT AND SPLITTING WINDOWS


Highlight a nick
`/hilight nick`

twirssi - twitter for irc
nicklist - displays a list of users

nicklist.pl
-----------

So to get the user list we'll need nicklist with some tweaks.

We'll need to do some tmux hackery to pull this off

The older versions of nicklist require us to use screen/tmux and do some
hackery, I'm not a fan, thankfully I stumbled across this
[http://github.com/ConX/nicklist.pl](nicklist.pl). This isn't ideal, we have
the user list at the top but it's much better than hoping that the screens open
and things fire off at the right time.

That a soon after finding the sweet spot, the original version of the script
decided to kill the cat command you had to run to get the user list, not my
idea of fun.

This will do for the moment but as part of my weekend of hacking I hope to
tweak this script to get the layout I want.

Aliases
-------

Now it's time to tweak our settings so that we can navigate freely and don't
have to decypher what is being said per room. I'm used to having a window per
channel and being alerted when someone makes a comment. For this I'd like to
create a window every time I join a new channel and remove the window once I
have left one. To do this we'll need aliases.

    /SET autocreate_windows ON`
    /SERVER ADD -auto -network freenode irc.freenode.net
    /save
    /exit

Now when you restart irssi you will be automatically connected to freenode :)


We'll leave this for now and come back to tweaking our settings later.

Resources
---------
[http://selcouth.com/irssi.php](basic irssi guide)
[http://michael-prokop.at/stg/irc_workshop.txt](irssi cheatsheet)
[http://www.mindfuzz.net/?p=301](GIVE ME A BETTER TITLE)
[http://www.irssi.org/themes](IRSSI Themes)
[http://irssi.org/beginner/](Lazy mans guide)
[http://pc-addicts.com/forum/viewthread.php?thread_id=538&pid=2282#post_2282](PC Addicts custom irssi setup)

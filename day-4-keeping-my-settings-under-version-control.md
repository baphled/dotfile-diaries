Keeping my settings under version control
=========================================

So we've done quite a bit to get irssi setup and working as I want it.
The last things I want to do is lose my settings or messing something
up, as I have done a number of times already.

So the easy fix for this is to create a repository and pull the config
in as dotirssi.

  * There's not much to this really.
  * I copy the .irssi directory to dotirssi.
  * I then initialised git for version control. 
  * Created a new repository on github
  * ignored files with the pattern 'scripts/twirssi.*'
  * Commited all the files
  * pushed the changes
  * added the project to my dotfiles using braid
    * This will change some point in this process

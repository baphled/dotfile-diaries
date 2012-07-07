Vim
===

Use a stripped down version of vim and document it
  duration: 6 weeks
  location: everywhere
  notes:

    * pain experienced
    * what was missed
    * what did I learn (daily log)
    * use `:map` in Vim to learn new mappings
    * use vimtutor

Learn a new plugin
------------------
  duration: 1 week per plugin
  notes:

    * this could be done after the intial 6 months

Customisations
--------------

use Vundle for package management
Separate bindings into different files dependant on their function

Common commands
---------------

These are a few vi commands I use quie a lot, as in "I should alias"

    :Git ci --amend
    :Git rebase --continue
    :bd
    <C-W> n +
    <C-W> n -

Macros
------

Set current line to soft tabs

    :set et
    V =

TODO
----

  * Work out how to stop surround from badding special chars ({,( and friends) with spaces
  * Make sure the shell is setup for zsh
  * Tweak settings to make writing markdown a little nicer
  * Able to open links and preview markdown via w3m
  * Add filetype `*.md` as `*.markdown`
  * Find a plugin for making markup with markdown more productive
    * Creating titles can be cumbersome
    * Building lists can be painful
  * mapping for toggling line numbers

Tips
----

  * `dvf char` - delete up to char
  * `df char` - delete up to and including the char
  * `:windo e` - Refresh all window

# bilbmacs (bibl's emacs)

This repository contains a copy of my personal Emacs configuration. This entire distribution is based off of my own personal preferences and also to a certain extent my own machine, meaning I have certain softwares and files that may interact with Emacs that may not be very well documented in the config files themselves. Over time I hope to properly organise, document and formalise my configuration but I am still learning the basics of Emacs and what it can do for me so I'll do that another time.

I also think it's important to state again that these settings are all **personal**, I do not espouse that they are optimal or even correct and you should configure your own system to your own specification. Since I am still in the beginning phases of Emacs usage, it may be interesting to see how I change my setup and how I do it over time as I learn and understand more.

## Structure

I have chosen to split up my initial config into multiple smaller files. Some may say that this becomes harder to search through and understand, but I think modularising it and organising it into logical blocks makes it easier to understand what's going on.

The entry file to my config is the usual `init.el` file in the base directory of `~/.emacs/` but I may try and integrate this into an `init.org` file with inline code in the future.

The separated configuration elements are placed in `config/init-x.el` where x represents a generally distinct idea or group of options.

## Feedback

I would love some.

Introduction
---------------

*sublime-helper* is a shell script collection to setup Sublime Text configuration files and command line aliases based on predefined templates.

.. contents ::

**Warning**: Running *install.bash* will override existing Sublime Text 2 configs if anything has been changed from the default settings. 
IMPORTANT STEPS:

1) Backup your existing configuration files!!!! (e.g. Package Control.sublime-settings, Preferences.sublime-settings)
2) Copy settings from your pre-existing Sublime settings files (same files as Step 1) into the corresponding settings files in ~/sublime-helper/
3) Modify the ~/sublime-helper/sublime-shell-settings file if you want to setup your own aliases. 

More detailed instructions follow but these are some of the most important steps!

The scripts are compatible with Linux and OSX.

Fork Changes
--------------

- Replaced Sublime settings and package control settings with custom files. THIS MUST BE MODIFIED BEFORE RUNNING /install.bash
- Changed Sublime path settings so the script will work properly on DBC machines.
- Modified /sublime-helper/bin/sublime-shell-settings with personal aliases and shortcuts. THIS MUST BE MODIFIED BEFORE RUNNING /install.bash

Future Fork Changes
--------------

- Add gemfile script.

Backup first
--------------

Find your Sublime Text config directory in Sublime Text menu *Preferences* > *Settings - User*.
Backup everything here.

Linux
------

Install Sublime Text on Linux and extract .tar.bz2 as **~/Sublime Text 2** folder (*Sublime Text 2* folder in your home directory).

**OTHER INSTALLATION LOCATIONS DON'T WORK** on Linux for now.

OSX
----

Use default Sublime Text 2 installation location.

Run Sublime Text once to install Package Control
--------------------------------------------------

Install Package Control inside Sublime Text. **ALREADY INSTALLED ON DBC COMPUTERS**

Open Console in menu *View* > *Show Console*.

Copy-paste in::

    import urllib2,os; pf='Package Control.sublime-package'; ipp=sublime.installed_packages_path(); os.makedirs(ipp) if not os.path.exists(ipp) else None; urllib2.install_opener(urllib2.build_opener(urllib2.ProxyHandler())); open(os.path.join(ipp,pf),'wb').write(urllib2.urlopen('http://sublime.wbond.net/'+pf.replace(' ','%20')).read()); print('Please restart Sublime Text to finish installation')

Close Sublime Text.

Installing shell script and terminal helpers
-----------------------------------------------

Make sure Sublime Text has Package Control installed (see above) and Sublime Text is closed in this point.

The following will install config importer and shell helpers.
This will create *sublime-helper* folder in your home directory::

    sudo apt-get install git  # Or your distribution corresponding command
    
    cd ~
    
    git clone git://github.com/miohtama/sublime-helper.git
    
    ~/sublime-helper/bin/install.bash

Note: Currently supporting only setting up in ``~/sublime-helper`` as path is hardcoded to ``.bashrc`` helper

Usage
---------

Go to any folder.

Type::

    e .

To open the current folder as a Sublime Text project - you will have sidebar to browse files.

When you start Sublime Text for the first time, after the script has updated *Package Control.sublime-settings* file,
you will get various automatically opening tabs telling you that this and that plugin has been installed.

Features
----------

- `Batch install packages through Package Control <https://github.com/miohtama/sublime-helper/blob/master/Package%20Control.sublime-settings>`_

- Setup `sane tab policy <http://opensourcehacker.com/2012/05/13/never-use-hard-tabs/>`_

- `Misc. settings <https://github.com/miohtama/sublime-helper/blob/master/Preferences.sublime-settings>`_

- `More info in the related blog post <http://opensourcehacker.com/2012/05/11/sublime-text-2-tips-for-python-and-web-developers/#Add_CodeIntel_autocompletion_support>`_

Shell notes
---------------

By default, Bash shell *.bashrc* is fixed to enable *subl* command.
If you are using any other shell, modify the shell config file with the line below (e.g. drop in the .zshrc file for oh-my-zsh)::

    source $HOME/sublime-helper/bin/sublime-shell-settings


Notes
-------------

Looks like *theme* setting export and import causes issues on pristine setup. Theme is not fetched correctly?

Don't try to transfer font setting if the destination font is missing.
Setup `Source Code Pro manually <http://opensourcehacker.com/2012/10/07/go-pro-and-your-eyes-will-thank-you/>`_.

Author
--------------

Mikko Ohtamaa (`blog <https://opensourcehacker.com>`_, `Facebook <https://www.facebook.com/?q=#/pages/Open-Source-Hacker/181710458567630>`_, `Twitter <https://twitter.com/moo9000>`_, `Google+ <https://plus.google.com/u/0/103323677227728078543/>`_)



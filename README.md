Laptop
======

Laptop is a script to set up an Ubuntu laptop for software development.

Requirements
------------

### Ubuntu

We support:

- [14.04: Trusty Tahr]

[14.04: Trusty Tahr]: https://wiki.ubuntu.com/TrustyTahr/ReleaseNotes

Install
-------

### Ubuntu

Read, then run the script:

    # Download and review the install script
    wget -qO- https://raw.githubusercontent.com/ncronquist/laptop/master/linux

    # Make it executable
    chmod 755 linux

    # Run the install script
    ./linux 2>&1 | tee ~/laptop.log

Debugging
---------

Your last Laptop run will be saved to `~/laptop.log`. Read through it to see if
you can debug the issue yourself. If not, copy the lines where the script
failed into a [new GitHub
Issue](https://github.com/ncronquist/laptop/issues/new) for us. Or, attach the
whole log file as an attachment.

What it sets up
---------------

- [Bundler] for managing Ruby libraries
- [Exuberant Ctags] for indexing files for vim tab completion
- [Heroku Config] for local `ENV` variables
- [Heroku Toolbelt] for interacting with the Heroku API
- [ImageMagick] for cropping and resizing images
- [Docker] for running linux containers
- [DVM] for managing Docker versions
- [Node.js] and [NPM], for running apps and installing JavaScript packages
- [NVM] for managing versions of Node.js
- [Rails] gem for writing web applications
- [Rbenv] for managing versions of Ruby
- [Ruby] stable for writing general-purpose code
- [The Silver Searcher] for finding things in files
- [Tmux] for saving project state and switching between projects
- [Watch] for periodically executing a program and displaying the output
- [Zsh] as your shell
- [oh-my-zsh] for making zsh awesome

[Bundler]: http://bundler.io/
[Exuberant Ctags]: http://ctags.sourceforge.net/
[Heroku Config]: https://github.com/ddollar/heroku-config
[Heroku Toolbelt]: https://toolbelt.heroku.com/
[ImageMagick]: http://www.imagemagick.org/
[Node.js]: http://nodejs.org/
[Docker]: https://www.docker.com/
[DVM]: https://github.com/getcarina/dvm
[NPM]: https://www.npmjs.org/
[NVM]: https://github.com/creationix/nvm
[Rbenv]: https://github.com/sstephenson/rbenv
[Ruby Build]: https://github.com/sstephenson/ruby-build
[Ruby]: https://www.ruby-lang.org/en/
[The Silver Searcher]: https://github.com/ggreer/the_silver_searcher
[Tmux]: http://tmux.sourceforge.net/
[Watch]: http://linux.die.net/man/1/watch
[Zsh]: http://www.zsh.org/
[oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh


It should take less than 15 minutes to install (depends on your machine).

Laptop can be run multiple times on the same machine safely. It will upgrade
already installed packages and install and activate a new version of ruby (if
one is available).

Make your own customizations
----------------------------

Put your customizations in `~/.laptop.local`. For example, your
`~/.laptop.local` might look like this:

    #!/bin/sh

    fancy_echo "Installing keepass to manage passwords ..."
      sudo apt-get install -y keepass2

    fancy_echo "Installing unity-tweak-tool to customize unity ..."
      sudo apt-get install -y unity-tweak-tool

    if which spotify &>/dev/null  
      fancy_echo "Installing Spotify for music ..."
        sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

        echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

        sudo apt-get update

        sudo apt-get install spotify-client
    fi

You should write your customizations such that they can be run safely more than
once. See the `linux` script for examples.

Credits
-------

![thoughtbot](http://thoughtbot.com/assets/tm/logo.png)

Laptop was created and funded by [thoughtbot, inc](http://thoughtbot.com/community).
The names and logos for thoughtbot are trademarks of thoughtbot, inc.

While this is a fork of Thoughtbot's Laptop project, it is only related in origin.
Thoughtbot [dropped Linux support] in Oct. 2014, but I really like they way
they have organized their project so I am starting from their last Linux supported
commit.

[dropped Linux support]: https://github.com/thoughtbot/laptop/commit/91048f3f96f0d2d14c1106f746dd51c417a26e30

Contributing
------------

Please see [CONTRIBUTING.md](https://github.com/thoughtbot/laptop/blob/master/CONTRIBUTING.md).

License
-------

Laptop is free software, and may be redistributed under the terms specified in the LICENSE file.

Muchmala
--------

Massively Multiplayer Online Puzzle

http://muchmala.com

Manual Installation (OS X)
----------------------------

1. Install [Redis](http://redis.io/)
    ```bash
    brew install redis
    ```

2. Install [Node.js](http://nodejs.org/)
    ```bash
    brew install node
    ```

3. Clone a project repository with all it's submodules:
    ```bash
    git clone --recursive git@github.com:borbit/muchmala.git
    ```

4. Install all the dependencies:
    ```bash
    ./install.sh
    ```

    Puzzles generation is built on top of [node-canvas](https://github.com/LearnBoost/node-canvas) which requires **Cairo**. So, if there is any problems with installing [node-canvas](https://github.com/LearnBoost/node-canvas) look for system-specific installation on [Wiki](https://github.com/LearnBoost/node-canvas/wiki/_pages).

5. Run Muchmala

    If you have [Foreman](http://ddollar.github.io/foreman/) installed:
    ```bash
    foreman start
    ```

    Otherwise:
    ```bash
    muchmala-api/bin/muchmala-api
    muchmala-static/bin/muchmala-static
    muchmala-io/bin/muchmala-io
    ```

6. Generate first puzzle:
    ```bash
    cd muchmala-cli
    mkdir ../muchmala-static/public/covers
    mkdir ../muchmala-static/public/frames
    ./bin/muchmala-cli create path/to/image.jpg -o ../muchmala-static/public
    ./bin/muchmala-cli covers -o ../muchmala-static/public/covers
    ./bin/muchmala-cli frame -o ../muchmala-static/public/frames
    ```
    
7. Open [http://localhost:8002](http://localhost:8002)

Vagrant Installation
--------------------

1. Add this to your `/etc/hosts`:
    ```bash
    10.0.6.2 muchmala.dev api.muchmala.dev static.muchmala.dev io.muchmala.dev
    ```

2. Install custom fork of ansible
    ```bash
    [sudo] pip install https://github.com/laggyluke/ansible/archive/roles_combine_vars.zip
    ```

3. Get the Vagrant VM up and running
    ```bash
    vagrant up
    ```

4. Go to the ansible directory and run provisioning for vagrant
    ```bash
    cd ansible
    ./provision.sh vagrant
    ```

5. SSH inside the Vagrant VM
    ```bash
    cd ..
    vagrant ssh
    ```

6. Once inside the VM, go to mounted project dir and run Muchmala
    ```bash
    cd /opt/muchmala
    foreman start
    ```
    
7. Generate first puzzle:
    ```bash
    cd muchmala-cli
    mkdir ../muchmala-static/public/covers
    mkdir ../muchmala-static/public/frames
    ./bin/muchmala-cli create path/to/image.jpg -o ../muchmala-static/public
    ./bin/muchmala-cli covers -o ../muchmala-static/public/covers
    ./bin/muchmala-cli frame -o ../muchmala-static/public/frames
    ```

Contributors
------------

- [George Miroshnykov](https://github.com/laggyluke) <[george.miroshnykov@gmail.com](george.miroshnykov@gmail.com)>

Contribution
------------

I will be really greateful for any contribution in:

* Design and usability improvements
* Mobile and tablets support
* Performance optimizations
* Game design
* Bug fixes

License
-------

Muchmala may be freely distributed under the [MIT license](http://en.wikipedia.org/wiki/MIT_License#License_terms).

Copyright (c) 2013 Serge Borbit &lt;serge.borbit@gmail.com&gt;

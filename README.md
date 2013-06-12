Muchmala
--------

Massively Multiplayer Online Puzzle

http://muchmala.com

Manual Installation (OS X)
----------------------------

1. Install [Redis](http://redis.io/)  

        brew install redis
    
2. Install [Node.js](http://nodejs.org/)

        brew install node

3. Clone a project repository with all it's submodules: 

        git clone --recursive git@github.com:borbit/muchmala.git

4. Install all the dependencies:

        ./install.sh
        
    Puzzles generation is built on top of [node-canvas](https://github.com/LearnBoost/node-canvas) which requires **Cairo**. So, if there is any problems with installing [node-canvas](https://github.com/LearnBoost/node-canvas) look for system-specific installation on [Wiki](https://github.com/LearnBoost/node-canvas/wiki/_pages).
    
5. Run Muchmala

    If you have [Foreman](http://ddollar.github.io/foreman/) installed:
    
        foreman start
        
    Otherwise:
        
        muchmala-api/bin/muchmala-api
        muchmala-static/bin/muchmala-static
        muchmala-io/bin/muchmala-io
        
6. Generate first puzzle:

        cd muchmala-cli/bin
        ./muchmala-cli create path/to/image.[png|jpg] -o muchmala-static/public
        ./muchmala-cli covers -o muchmala-static/public/covers
        ./muchmala-cli frame -o muchmala-static/public/frame

7. Open [http://localhost:8002](http://localhost:8002)
        
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

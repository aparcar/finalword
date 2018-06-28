# lastword

easily generate nice looking documents without even bothering to learn latex (in
depth) or buy Word.

put markdown documents in `./input/` and run the following docker command

    docker run --rm -it -v `pwd`/input:/input -v `pwd`/output:/output finalword

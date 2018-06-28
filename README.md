# lastword

Easily generate nice looking documents without even bothering to learn latex (in
depth) or buy Word.

Put markdown documents in `./input/` and run the following docker command

    docker run --rm -it -v `pwd`/input:/input -v `pwd`/output:/output aparcar/finalword

Checkout documents at `./output`.

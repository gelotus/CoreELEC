#!/bin/sh

git archive --format=tar --prefix=CoreELEC-source-$1/ tags/$1 | bzip2 > CoreELEC-source-$1.tar.bz2


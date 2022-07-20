#!/usr/bin/env bash
pip3 install xxh-xxh
cat ../sources/xxh.txt | xargs -n 1 xxh +I

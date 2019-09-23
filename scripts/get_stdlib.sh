#!/bin/bash

rm -rf ./stdlib \\
curl -L https://api.github.com/repos/Zokrates/ZoKrates/tarball > zokrates.tar.gz

tar -xvf zokrates.tar.gz --wildcards '*/zokrates_stdlib/stdlib' --strip-components=2
rm -rf ./zokrates.tar.gz
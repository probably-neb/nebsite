#!/bin/bash

MOD_SRC=./modules-src
MOD=modules
NAME=${1}

git submodule add git@github.com:probably-neb/"${NAME}".git "${MOD_SRC}/${NAME}"
mkdir ${MOD}/${NAME}

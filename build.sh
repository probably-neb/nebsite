#!/bin/bash

MOD_SRC=modules-src
MOD=modules

git submodule update --init --recursive --remote 

src_path() {
    echo ${MOD_SRC}/${NAME}
}

out_path() {
    echo ${MOD}/${NAME} 
}

# ANT SIM
NAME=ant-sim
echo "$(
    cd "$(src_path)" && ./build.sh
)"
cp -r $(src_path)/bin/* $(out_path)/bin

# WORDLE (bondfauna)
NAME=bondfauna
echo "$(
    cd "$(src_path)" && trunk build --public-url="$(out_path)" --release
)"
cp -r $(src_path)/dist/* $(out_path)/

# resume
NAME=resume
RESUME="$(out_path)/${NAME}"
curl -Lo "${RESUME}.pdf" https://github.com/probably-neb/resume/releases/latest/download/resume.pdf
# convert to jpg for <img/> preview
convert -density 300 -quality 100 "${RESUME}.pdf" "${RESUME}.jpg"

# wfc
NAME=wfc-rust
SRC_PATH="$(src_path)/wfc-web"
echo "$(
    cd $SRC_PATH && trunk build --public-url="$(out_path)" --release
)"
cp -r $SRC_PATH/dist/* $(out_path)/

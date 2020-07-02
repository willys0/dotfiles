#!/bin/bash

# Installs a bunch of nice packages I like.

apt-get update && (
    apt-get install build-essential;
    apt-get install git;
    ( (apt-get install emacs26 || (add-apt-repository ppa:kelleyk/emacs && apt-get update && apt-get install emacs26)) &&
        (git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d && ~/.emacs.d/bin/doom install && (echo "PATH=$PATH:~/.emacs.d/bin" >> ~/.bashrc)) );
    apt-get install tmux;
    apt-get install llvm-10 clang-10 libclang-10-dev; # emacs irony server depends on this
    )
echo "source ~/.local/bash_aliases" >> .bashrc

#!/usr/bin/env bash

set -e

export LANG=C.UTF-8
export LC_ALL=C.UTF-8

apt-get update
apt-get install -y git make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl \
    llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev libfreetype6-dev

git clone https://github.com/spacetelescope/nbcollection nbcollection
cd nbcollection
git checkout 2fe2344718f0e3e2f1c3a057a3007a6339236bfe
pip install -U pip setuptools
pip install -r ci_requirements.txt
python setup.py install
cd -
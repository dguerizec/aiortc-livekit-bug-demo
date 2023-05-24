#!/bin/bash

cd $(dirname $0)

[[ -d aiortc ]] || git clone https://github.com/aiortc/aiortc.git

[[ -d venv ]] || python3 -m venv venv

. venv/activate

pip install -U pip
pip install -r requirements.txt
ln -s $(pwd)/bin/livekit-server venv/bin/livekit-server
ln -s $(pwd)/bin/livekit-cli venv/bin/livekit-cli

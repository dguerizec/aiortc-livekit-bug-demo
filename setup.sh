#!/bin/bash

cd $(dirname $0)

[[ -d aiortc ]] || git clone https://github.com/aiortc/aiortc.git
[[ -d aiortc_fix ]] || git clone https://github.com/dguerizec/aiortc.git

[[ -d venv ]] || python3 -m venv venv

. venv/activate

pip install -U pip
pip install -r requirements.txt
ln -s $(pwd)/bin/livekit-server venv/bin/livekit-server
ln -s $(pwd)/bin/livekit-cli venv/bin/livekit-cli

case $1 in
  --fix)
    pip install -e ./aiortc_fix
    ;;
  *)
    pip install -e ./aiortc
    ;;
esac


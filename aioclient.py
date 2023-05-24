#!/usr/bin/env python3

import asyncio

from livekit_signaling import LK, Signaling
from livekit_signaling.utils import PeerConnectionEvents, create_pc, wintolin
from aiortc import MediaStreamTrack, sdp

HOST = "localhost"
PORT = 7880
ROOM = "conference"
API_KEY = "devkey"
API_SECRET = "secret"
IDENTITY = "test-identity"

def main() -> None:
    signaling = Signaling(
        host=HOST,
        port=PORT,
        room=ROOM,
        api_key=API_KEY,
        api_secret=API_SECRET,
        identity=IDENTITY
    )


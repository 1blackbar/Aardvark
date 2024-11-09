Modifications by @minidogeart for OpenBOR WebAssembly Port
Based on OpenBOR 4.0 build 7533

Ported OpenBOR to WebAssembly (WASM):
Complete port of OpenBOR engine to WebAssembly, enabling browser-based gameplay without requiring native installation.

WebM VP9 Video Support:
Added support for WebM video format with VP9 codec, allowing playback of YUV420 video files in-game.

Asynchronous WebM Video Playback:
Implemented asynchronous playback for WebM videos, ensuring smooth and non-blocking video experience during browser based gameplay.

OGG Sound Effects Support:
Added support for .ogg format sound effects, allowing ogg for all sounds effects instead of mandatory usage of wav.

Legacy Holes Support:
Reintroduced support for legacy 'holes' features, enhancing compatibility with older content.

Stereo Sound Playback Fix:
Fixed issues with stereo sound playback to ensure accurate audio positioning and quality.

Stage Direction Fix (Up):
Resolved stage direction bug when moving 'up,'.
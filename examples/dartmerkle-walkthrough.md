# Dartmerkle Walkthrough

I use this file as a small checklist before changing the Dart implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | input width | 184 | ship |
| stress | search depth | 164 | ship |
| edge | boundary pressure | 192 | ship |
| recovery | complexity | 195 | ship |
| stale | input width | 154 | ship |

Start with `recovery` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `complexity` against `input width`, not the raw score alone.

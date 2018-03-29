#!/bin/sh
(while true; do sleep 300; done) &
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak-builder --arch=x86_64 --user --install-deps-from=flathub --sandbox --repo=repo build *.json >/dev/null 2>/dev/null
flatpak repo --info repo

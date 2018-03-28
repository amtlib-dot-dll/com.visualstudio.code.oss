#!/bin/sh
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak-builder --arch=x86_64 --user --install-deps-from=flathub --sandbox --repo=repo build *.json

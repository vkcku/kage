#!/usr/bin/env bash

set -e

if [ -z "$1" ]; then
  printf "fatal: no wallpaper path given\n";
  printf "usage: %s <wallpaper_path> <monitor - optional>\n" "$0"
  exit 1;
fi

wallpaper_path="$(realpath "$1")"
monitor="$2"

if [ ! -f "$wallpaper_path" ]; then
  printf "fatal: no file found: '%s'\n" "$wallpaper_path";
  exit 1;
fi

hyprctl hyprpaper unload all
hyprctl hyprpaper preload "$wallpaper_path"
hyprctl hyprpaper wallpaper "$monitor, $wallpaper_path"

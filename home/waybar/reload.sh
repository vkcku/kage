waybar_dir="$(dirname "$0")"

waybar &
WAYBAR_PID=$!

trap "$WAYBAR_PID" exit

while true; do
  # NOTE: `inotifywait` will need to be installed separately or enter a shell
  # with it via `nix-shell -p inotify-tools`.
  inotifywait -e create,modify "$waybar_dir"
  
  if ! kill -USR2 "$WAYBAR_PID"; then
    kill -INT "$WAYBAR_PID"

    # Invalid configurations result in waybar exiting which is annoying.
    waybar &
    WAYBAR_PID=$!
    trap "$WAYBAR_PID" exit
  fi

done


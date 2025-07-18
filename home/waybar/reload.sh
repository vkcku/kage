waybar_dir="$(dirname "$0")"

waybar &
WAYBAR_PID=$!

trap "$WAYBAR_PID" exit

while true; do
  # NOTE: `inotifywait` will need to be installed separately or enter a shell
  # with it via `nix-shell -p inotify-tools`.
  inotifywait -e create,modify "$waybar_dir"
  kill -SIGUSR2 "$WAYBAR_PID"
done


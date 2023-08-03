# Example of using dictionaries/associative array/maps/etc
declare -A sounds

sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Wolf makes '${sounds[wolf]}' sound."

echo "Keys: ${!sounds[@]}"
echo "Values: ${sounds[@]}"

echo "Length: ${#sounds[@]}"

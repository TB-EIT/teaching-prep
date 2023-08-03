# Using loops example.

Fruits=('Apple' 'Banana' 'Orange')

for i in "${Fruits[@]}"; do
  echo "$i"
done

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

for key in "${!sounds[@]}"; do
  echo "$key -> ${sounds[$key]}"
done

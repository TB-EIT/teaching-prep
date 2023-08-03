# Using lists example

Fruits=('Apple' 'Banana' 'Orange')

echo "${Fruits[@]}"

Fruits[1]="Pear"

echo "${Fruits[1]}"

Fruits+=('Watermelon')
echo "${Fruits[@]}"

Veggies=('Potato')

Fruits=("${Fruits[@]}" "${Veggies[@]}")
echo "${Fruits[@]}"

echo "Length of the Fruits array: ${#Fruits[@]}"

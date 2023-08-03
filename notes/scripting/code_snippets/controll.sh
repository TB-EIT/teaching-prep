# Example of using an if branch.
val=0

if (( $val < 0 )); then
    echo "Is negative"
elif (( $val > 0 )); then
    echo "Is Positive"
else
    echo "It's zero!"
fi

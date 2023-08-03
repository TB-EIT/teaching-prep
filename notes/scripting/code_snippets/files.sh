# File manipulation example

# Make sure that copy directory exists
mkdir copy 2>/dev/null

# Read in the files we need to process
while read -r file; do
  echo "Contents of $file :"

  # Make sure that the destination file exist and is empty
  rm "copy/$file" 2>/dev/null
  touch "copy/$file"

  while read -r line; do
    echo "$line" # Log contents of the copied file to console

    # Actualy copy over the line to the destination file
    echo "$line" >> "copy/$file"
  done < $file

done < main_input.txt

# File manipulation example

import os

# If the copy directory doesn't exist make one
if not os.path.exists("copy"):
    os.mkdir("copy")

# Read in the original file names from this file
with open("main_input.txt", "r") as files:

    # Process each file here
    for f in files:
        file_name = f.strip()

        print("About to copy over the contents of {} file".format(file_name))

        # Copy over the contents of the original file line by line
        with open(file_name, "r") as source, open("copy/{}".format(file_name), "w") as destination:

            for line in source:
                print(line, end='')
                destination.write(line)

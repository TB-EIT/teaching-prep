# Script that looks though the log files in directoryPath, extracts error messages from them
# and stores them in archived LEE_output.log.gz file

import os
import subprocess

directory_path = "/home/taras/logs"
output_file = "LEE_output.log"

if os.path.exists(directory_path):
    print("Logs directory found.")
else:
    print("Log directory does not exist. Terminating.")
    exit(1)

with os.scandir(directory_path) as entries, open(output_file, 'w') as output:
    for entry in entries:
        if entry.is_file():  # Check if it's a file (not a directory)
            print("Started processing {}".format(entry.path))

            with open(entry.path) as input_file:
                for line in input_file:
                    if "ERROR" in line:
                        output.write(line)

subprocess.run("gzip LEE_output.log", shell=True, capture_output=True, text=True)

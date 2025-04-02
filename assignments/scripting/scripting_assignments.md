# Scripting

### Questions

| Can answer? | # | Question |
| --- | --- | --- |
| <input type="checkbox"> | 1 | What is scripting used for? |
| <input type="checkbox"> | 2 | What are the biggest differences between PowerShell vs Bash vs Python scripting? |
| <input type="checkbox"> | 3 | How do you combine (chain) the execution of multiple commands in Bash and PowerShell while controlling their execution based on the success or error of preceding commands. |

## Basic Flow Control

### Assignments

| # | Assignment | Can do in PowerShell? | Bash? |  Python? |
| --- | --- | --- | --- | --- |
| 1 | Create two string variables with values in the script. Output their concatenation to the console. | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| 2 | Read in two integer variables from the user input (or standard input). Output their sum to the console. | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| 3 | Read in one string variable and one float variable from the script command line parameters. Output a formatted string that uses those variables to the console. | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| 4 | Read in one variable value from the environmental variable that you've set previously and save it to a file. | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| 5 | (Bonus) Put an animal name into a variable (your choice how). Use switch/case/match constructs to output the sound that animal makes (handle an unexpected animal too). | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| 6 | Based on person's age, gender, etc. use if/then/else constructs to output a honorific you should use when addressing that person. | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| 7 | Perform an operation in your script which based on the supplied inputs can throw an error/exception. Use try/catch/finally constructs to handle it gracefully. | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| 8 | Create an array/list. Add some values to it using user input or command line parameters. Print out first, last, middle value in the list. Change those values. Print out the length of the list. Create another list and print out the concatenation of the two lists. | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| 9 | Create a dictionary/associative array/hash list/map. Add some entries to it using user input or command line parameters. Print out the whole thing. Then print out only some of the values. Change some entries. Print out the count of the entries. Check wether some entry is present or not (print out a boolean result). | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| 10 | Use a for loop to printout every entry in a dictionary. Use a for loop to printout every odd element of an array. | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| 11 | Use a while loop to print out user input back to the user as long as they don't enter the "stop" command. | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| 12 | Create 'separated' directory. Open 'input.txt' file. Put every odd line from that file in 'separated/odd_input.txt' file and every even line of that file into 'separated/even_input.txt' file. | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| 13 | Write a script which will access a remote machine, navigate to a directory of your choosing, archive all log files older than a day there (can use file names with dates in them to decide), download the archive, and delete the original log files. | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |
| 14 | Write a script which receives all messages in a Storage Account Queue, and based on the first word of the message uploads the rest of the message to a BLOB container with the same name as the first word. Don't forget to delete the messages off the queue once the BLOB upload is done. | <input type="checkbox"> | <input type="checkbox"> | <input type="checkbox"> |

## Linux/Windows Administration

### Questions

| Can answer? | # | Question |
| --- | --- | --- |
| <input type="checkbox"> | 1 | What are environmental variables and how do you set them? |
| <input type="checkbox"> | 2 | What does it mean to run a command/process in background? Why do it and how? |

### Assignments

| # | Assignment | Can use PowerShell equivalents? | With common optional parameters? |
| --- | --- | --- | --- |
| 1 | Practice using 'pwd', 'ls', 'cd' UNIX commands and special '.', '..', '/', '~', '-' directories. | | |
| 2 | Practice using 'touch', 'mkdir', 'cp', 'mv', 'rm' UNIX commands. (Bonus) Practice using wildcards to target multiple files/directories with those commands at once. | | |
| 3 | Practice using 'cat', 'head', 'tail', 'less', 'more' UNIX commands. Use 'nano' or 'vi'/'vim' to create some file contents to browse. | | |
| 4 | Practice using 'grep', 'sed', 'find' UNIX commands. | | |
| 5 | Practice using '\|', '>', '>>', '<', '2>' UNIX redirects. | | |
| 6 | Practice using 'ps', 'top/htop', 'kill', 'which' UNIX commands and '&' operator. | | |
| 7 | Practice using 'apt/apt-get' or 'yum' or 'brew' or 'snap' utility on your UNIX machine. | | |
| 8 | Practice using 'ssh', 'sftp', 'scp', 'curl', 'wget' UNIX commands. | | |
| 9 | Practice using 'useradd', 'passwd', 'groupadd', 'usermod' UNIX commands. | | |
| 10 | Practice using 'stat', 'chmod', 'chown' UNIX commands. | | |
| 11 | Practice using 'cron' UNIX utility. | | |
| 12 | Practice using 'systemd' UNIX utility. | | |
| 13 | Practice using 'tar', 'gzip', 'gunzip' UNIX commands. | | |
| 14 | Practice using '&&', '\|\|', ';', '\\', '$( ... )' UNIX operators. | | |
| 15 | Practice using 'ping', 'traceroute', 'ifconfig', 'netstat', 'dig', 'nslookup' UNIX commands. | | |
| 16 | Practice using 'df', 'du' | | |
| 17 | Practice using 'hostname', 'who', 'date', 'uptime', 'reboot', 'shutdown' UNIX commands. | | |

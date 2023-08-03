# Script that looks though the log files in /home/taras/logs, extracts error messages from them
# and stores them in archived LEE_output.log.gz file

if [ -d "/home/taras/logs" ]; then
    echo "Logs directory found."
else
    echo "Log directory does not exist. Terminating."
    exit 1
fi

target_files=$(find logs/ -type f -name '*.log')
echo -e "\nTarget files: \n$target_files\n"

rm LEE_output.log 2>/dev/null && echo "Removed existing LEE_output.log file."

for f in $target_files; do
    echo "Started processing $f"
    grep ERROR $f >> LEE_output.log
done

echo "Archiving LEE_output.log"
gzip LEE_output.log

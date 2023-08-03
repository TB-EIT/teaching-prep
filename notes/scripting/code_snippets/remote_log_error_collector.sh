# 1. Copy log extractor script onto the target remote machine
echo "Please enter remote host password to upload the log error extractiom script."
scp log_error_extractor.ps1 taras@104.211.34.23:/home/taras

# 2. SSH onto the remote machine, allow execution of the script and execute it
echo "Please enter remote host password to execute the log error extraction script."
ssh taras@104.211.34.23 "pwsh log_error_extractor.ps1"

# 3. Download resulting archive with the error logs
echo "Please enter remote host password to download the log error archive."
scp taras@104.211.34.23:/home/taras/LEE_output.log.gz LEE_output.log.gz

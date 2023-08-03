# Example of writing files

mkdir test
cd test
echo "Taras,95" > customer1.txt
echo "Joe,16" > customer2.txt

# Let's pretend that the application I test is 'ls'
cd ..
ls test > output.txt

wc -c < output.txt

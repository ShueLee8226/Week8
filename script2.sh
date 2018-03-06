#!/bin/bash

clear
echo "This is Week2 script"
echo "Let review the basic of linux script"
echo "Let check which working directory are we on and what directory are there?"
pwd
sleep 1
ls -l
sleep 5

echo "Now let create a file call Hello.txt"
touch Hello.txt
echo "Next let create a Direcotry call World"
mkdir World
echo "let check them"
ls

sleep 2
echo "Now let copy Hello.txt and make Hello2.txt"
cp Hello.txt Hello2.txt
ls
echo "Now let move the two file into the Directory World"
mv Hello.txt World
mv Hello2.txt World
ls
sleep 3
cd World/
pwd
ls
sleep 3

echo "Now let cat a file and sort them In the File Hello.txt"
echo "This is simple 1" >> Hello.txt
echo "Coconut" >> Hello.txt
echo "Apple" >> Hello.txt
echo "Banana" >> Hello.txt
cat Hello.txt
echo "Now sort them"
echo "==================="
sort Hello.txt
sleep 2
echo "1" >> Hello2.txt
echo "2" >> Hello2.txt
echo "3" >> Hello2.txt
echo "Now let check what diffent inside Hello.txt and Hello2.txt"
diff Hello.txt Hello2.txt

rm Hello.txt Hello2.txt
cd ..
rmdir World

Author: Aishwarya Venketeswaran
Spring 2015 CS 154
Project 
Submitted Prof.Adel Atta

Files that have been submitted:
spec.l - Contains the comiler program I wrote.
lex.yy.c - C file created by flex.
a.exe - Executable created by compiling lex.yy.c
temp.txt - Sample input file


Steps to run the program [assuming the computer has flex and gcc]:
1. Type this command in the command prompt- flex spec.l . This creates a file named lex.yy.c (attached).
2. Type this on the command line- gcc lex.yy.c. This compiles the c file and creates a.exe.
3. Run a.exe by giving temp.txt as the input file- ./a < temp.txt.
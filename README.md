# COP4640-Project-4
Goal: To familiarize students with Windows command line parameters, conditionals and loops.
Create a Windows command line script that implements a Linux Command Line interpreter. The script file should be named bash.bat.
This script will implement the following Linux Bash command line commands using the appropriate Windows command:
• ls – displays the list of files and directories in a directory. If no parameter, use current directory examples: ls directoryname or ls
(use windows command dir)
• cp – copy a file from source to destination example: cp sourcefile destinationfile (use windows command copy)
• rm – removes a file example: rm filename
(use windows command del)
• mv – moves a file to another file name and location: examples mv xxx yyy or mv xxx someplace\yyy
(use windows command move)
• cd – change directory example cd newdirectory or cd C:\dir\dir\newdir
(use windows command cd)
• ifconfig – shows network information
(use bash command ipconfig)
• pwd – prints the working directory (use windows cd command)
• help – displays a list of the Bash commands available with brief descriptions, similar to the Windows help command.
• exit – exit the script
When started, the script should print:
Welcome to the Linux Bash Command Line simulator!
Enter your commands below
lcl>
The text lcl> with a space is the command prompt. The user would then enter as many commands as they like in any order until they type exit or ^c.
If the user types an unrecognized command, respond with:
ERROR: Unrecognized command University of North Florida 1
COP 4640 Project 4
If a valid command is entered but does not have the proper number of parameters, respond with:
Usage: put example here
For example:
lcl> cp aaa
Usage: cp sourcefile destinationfile
lcl>
If the command is valid and has the right number of parameters, print the bash command being used and the results.
For example:
lcl> cp aaa bbb
using Windows command: copy aaa bbb
done
lcl>
If there is an issue, just let the Windows error message display
lcl> cp aaa bbb
using Windows command: copy aaa bbb
The system cannot find the file specified.
done
lcl>
1. Write a lab report that shows your windows script.
2. Show an excerpt from your test session for each command showing that it works. Show error cases as well.
Use the man command to learn about the various bash commands and the help command in the windows command line to Learn about the windows commands.
You should submit the lab report as a MS word or PDF file. University of North Florida 2
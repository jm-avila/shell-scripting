# Viewing and Editing Files

history command
to show commands history
example: history
option: number 
example: history 10
list of last 10 commands
option: c
example: history -c
hides history until the -c command
At the user directory (~) there is hidden file named .bash_history which contains the history.

! command
to execute a command by it's history line number
example: !10
executes the command at line 10 of the history

less command
to see a file
example: less "fileName"
comamnds within less view:
    Spacebar or Page down: Next page
    b or Page up: Previous page
    Up arrow: Scroll up one line
    Down arrow: Scroll down one line
    G: Move to the end of the text file
    g: Move to the beginning of the text file
    /text: Search Forward to the next occurence of text
    n: Search for the next occurence of the previous search
    h: Display help screen
    q: Quit less

open command
opens a file with textEdit app
example: open "fileName"

cat command
concatenates files together and shows them on terminal in the other of the command
example: cat "fileName01" "fileName02"

tac command
reverse concatenates files together and shows them on terminal in the other of the command
example: cat "fileName01" "fileName02"

head command
show first 10 lines of a file
example: head "fileName"
option:
    -n "number"
    example: head -n 15
    shows the first 15 lines

tail command
show last 10 lines of a file
example: tail "fileName"
option:
    -n "number"
    example: tail -n 15
    shows the last 15 lines

wc command
word count
example: wc "fileName"
outputs: line number, word number, byte/character number, file name
options:
    -l => only print the number of lines
    -w => only print the number of words
    -c => only print the number of byte/character
    -L => print the number of character of the longest line

composed command
touch thousand; 
for((i=1;i<=1000;i++)); do echo $i >> thousand; done

make a file named "thousand", iterate while i is less than or equal to a thousand. on each iteration print the value of i into the thousand file. After the loop all task are done.
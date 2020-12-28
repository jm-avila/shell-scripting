# Custom Commands

; semicolon
command separator
Commands are executed in sequentially and ignoring typos and errors.

&& and
concatenates commands, executing the next one if the current one is successfull.

wildcard
is a symbol that represent one or more characters.

* => matches any number of characters
    example: 
        mv * dir (moves all files to dir)
        rm file* (removes all files that start by "file")
        cp *.txt (copies all files that end by ".txt")
        cp file*.txt (copies all files that start by "file" and end by ".txt")
        
? => matches a single character
    example: 
        cp file?.txt dir 
        (copies all files with name "file", any single character, and end by ".txt") 
        file1.txt matches 
        file10.txt doesn't match

common example:
        rm file?.*
        removes any file that starts by "file" has one character followed by "." and any other characters.

[] => matches a range of characters
    example: 
        rm [abc]_file.txt
        removes any file with name a,b or c + _file.txt

[!] => matches all but a range of characters
    example:  
        rm [!abc]_file.txt
        removes any file with name of a single charater except a,b or c + _file.txt

range categories
        [0-9] range of numbers 
        [[:upper:]] uppercase character 
        [[:lower:]] lowercase character 
        [[:digit:]] numeric character
        [[:alpha:]] alphabetic character
        [[:alphanum:]] alphabetic or numeric character

alias command
package a set of commands calling them with an alias and display existing aliases.
example: 
    alias chemiFile="touch chemi.txt; echo "Hello Chemi" >> chemi.txt; open chemi;"
    alias  
        shows existing aliases
unalias command
remove an alias
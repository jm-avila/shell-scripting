# Files

common command options

-R
to do recursively, flag needed to use commands on directories. 
example: rm -­R mydirectory 
example: rm -­r mydirectory 
* -­R is not case sensitive in the example, but -r can also mean reverse in some commands. 

­-i
interactive mode
Prompt you before executing the command on any existing file

-­f
to force the command
Never prompt you before executing the command nor display a warning message if the file doesn't exist.

-­v
verbose mode
Print the name of each file before executing the command it

--
show options
Prints a brief list of available options of a command

--help
show verbose options 
Prints a comprehensive list of all available options of a command

touch command
easiest way to create new, empty files.
example: touch file1 file2 file3

touch is also used to update the timestamp (Modification date) for an existing file.
example: touch oldfile 
will change the timestamp of oldfile to the current time.

mkdir command
to make a directory
example: mkdir directory1 directory2 directory3

rmdir command
to remove an empty directory 
rmdir directory1
* This will only remove directory1 if it's empty !

rm command
valid options: -R, -i, -f, -v
to remove files
example: rm file1.txt file2.txt file3.txt
* rm can be used to delete any file including 
non­emtpy directories

cp command
valid options: -R, -i, -f, -v
cp stands for copie. It can be used in two different ways:
1 - without destination
    file example: cp file1 file2
    Makes a copy of file1 named file2
    directory example: cp -­R dir1 dir2
    Makes a copy of dir1 named dir2

2 - with destination
    file example: cp file1 file2 ./some_directory
    copies the files into the some_directory
    directory example: cp ­R dir1 dir2 ./some_directory
    copies the directories into the some_directory
    * the destination directory must exist


mv command
valid options:  -i, -v
stands for move. Moving files is like cutting files. Files are displaced from their original location.
It can be used in two different ways:
1 - Moving files
    example: mv file1 file2 ./some_directory
    Moves multiple files into some_directory
    example: mv dir1 dir2 ./some_directory
    Moves multiple directories into some_directory

2 - Renaming files or directories
    example: mv file1 file2
    Rename file1 to file2
    * You don't need the ­R option with the mv commands

file command
prints a brief description of a file content and type.
* Filenames are case sensitive
* Linux has no concept of a “file extension”. Meaning that a filename like picture.jpg would normally be expected to contain a JPEG image, but it is not required to in Linux.

Special characters
some characters have special meaning to the shell
$
    name: dollar sign
    1 - In Unix all shells support the use of the $ as a prefix to the name of a shell variable or an environment variable.

< >
    name: angle brackets 
    1 - Commonly used to enclose a code of some.
    
&  
    name: ampersand
    1 - In programming, a double ampersand is used to represent the Boolean AND operator.
    2 - In HTML, the ampersand is used to code foreign letters and special characters.

|
    name: pipe
    1 - The symbol for Boolean OR operations.

;
    name: semicolon
    1 - Often used to separate various elements of an expression.

'
    name: single quote
    1 - In programming is often used to delineate a string of text.
"
    name: double quotes
    1 - In programming is often used to delineate a string of text.
    2 - In a Web search engine is used to delineate a phrase for searching rather than individual words.

\
    name: backslash
    1 - in Windows paths separates the elements of the path.
    2 - in Windows two backslashes are used as a prefix to a server name (hostname).

Unique character 
/
    name: forward slash
    1 - divide symbol in programming
    2 - in Unix paths separates the elements of the path 
    * can't be escaped

Filenames
In Linux, there are two forbidden characters for filenames: / and NUL 

Inserting a special characters or space in a filename
1 - Write it with single or double quotes
    example: mkdir 'my work'
             mkdir  "my $ work"

2 - Insert escape character \ before every occurence of a special characters or space 
    example: mkdir I\ Love\ Linux
             mkdir backslash\\\ name

Refering to filename with a space
The same rules as above apply

Keyboard shortcuts
Commands can get very long, shortcuts are the most efficent way to naviagte inside the command line.
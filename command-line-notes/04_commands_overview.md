# Commands Overview

Types of commands:
    Executable Programs
    Shell builtins
    Shell scripts
    Alias

Executable Programs
Can be found at the bin directory.
example: cp

Shell builtins
Commands that are built into the command line.
example: cd

Shell scripts
A command can be a script. Can be found at the bin directory.

Alias
Used to make custom commands.

type command
It's used to identify the type of a command. It can't differentiate between executable programs and shell scripts. 
example: type commandName

file command
To identify executable programs and shell scripts you must provide their absolute path.
example: file absolutePath

which command
displays the location of executable and shell builtins commands files.
example: which commandName

The command line offers a way to facilitate it's use.

help command
displays builtins commands information. 
example: help builtinCommandName

man command
stands for manual. displays the manual for a commands.
example: help commandName

whatis command
shows a brief description of a command.
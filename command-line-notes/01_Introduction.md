# Shell and Terminal

The shell is the command line interpreter, it takes the commands that you enter and sends them to the operating system to be executed. The shell is what actually handles the commands.

The Terminal was a physical device that connects to a computer, usually over serial cable or modem. Nowadays, when someone says a Terminal, he really means a Terminal emulator. Software that imitates the physical device that was once called a Terminal.

The Terminal is a GUI (Graphical User Interface) to the shell. In other words, we access the shell through our terminal.

## Basic Commands

Commands are case sensitive, almost all commands are in lowercase.

- date
  - current date
- cal

  - current month calendar
  - flags
    - -y
      - current year calendar
    - -3
      - displays the previous, current and upcoming month calendars

- clear
  - clears terminal
- exit
  - exits current terminal session

## The Linux file system

The file system has a tree like structure, also referred to as
the Directory tree. A directory is a location that stores multiple files, aka folder.

## The Directory Tree

Each directory and/or file has one parent.

The first directory (top most) in our directory tree is called the root directory and is represented by a forward slash /

The root directory contains files and subdirectories, which contain more files and subdirectories and so on.

### Common Directories

- /
  - root directory, has no parent
- /etc
  - contains system configuration files
- /bin
  - stands for binary, contains the commands and utilities used on a daily basis (All users have access to it)
- /sbin
  - contains programs that performs vital system tasks (Network management, Disk partitioning). Only the superuser has access to these programs.
- /home
  - each user is given a home directory to store their files.
- /opt
  - stands for optional, contains optional software not installed by default.
- /tmp
  - stands for temporary, contains temporary files created by various programs. Generally cleared on reboot.
- /var
  - stands for variable, contains variable data.
- .
  - current directory
- ..
  - parent directory

### Absolute and relative paths

An absolute path begins with the root directory and follows the directory tree branch by branch until the path to the desired directory or file is completed.

A relative path starts from the current working directory. You can refere to it by using ./ or a directory or filename present a the current folder.

### Navigating the File system

1. The root directory is represented as /
2. The home directory is represented as ~
3. The current directory is represented as .
4. The parent directory is represeted as ..
5. The previous directory is represented as ­-

### Navigation commands

- pwd
  - stands for print working directory, prints the absolute path name of your current working directory.
- cd
  - stands for change directory
- cd directoryName
  - Changes to the inputed directory name
- cd /
  - Changes to your root directory
- cd ~
  - Changes to your home directory
- cd ..
  - Changes to your parent directory
- cd ­-
  - Changes to your previous directory

### List Commands

- ls
  - stands for list, lists all the files on the current working directory
- ls /
  - list the files in your root directory
- ls ~
  - list the files in your home directory
- ls ..
  - list the files of your parent directory
- ls /home/user/Desktop
  - list using an absolute pathname
- ls ~/Desktop
  - list using a relative pathname

### List Commands Options

- ls -­a
  - list all the files in your current working directories including hidden files
- ls -­l
  - long listing, shows additional information about a file.
- ls -­t
  - list the files sorted by modification date.
- ls -­r
  - list the files in reversed fashion.
- ls -­i
  - list the index node number of each file in the current directory
- ls -R
  - list the contents of a directory and all it's subdirectories

### Combining command options

You can combine as many options as needed, the order doesn't matter any order will have the same results. Options can be added individually or concatenated.

- long way
  - ls -­R -a
- short way
  - ls -­Ra

## Linux Links

There are two kinds of Links in Linux, Hard and Soft Links.

### inode
Before we dive in, we need to understand what is an inode. Every file on a Linux system has an inode or index node. An inode is basically a file structure which contains all of a file information except for file contents and file name.

Typically an inode contains the following information about a file:

1. Inode number
2. File size
3. File type
4. Owner
5. Permissions
6. Number of Links

- ls -i
  - list inode Number
- ls -l
  - list all inode Information but inode number

### Hard Links

1. They have the same inode number as the original file
2. They have the exact same file size as the original file
3. If you delete the original file, hard links will not get affected.

- ln

  - Makes a copy of a file to the current directory.
  - Syntax: ln flags Originalfile Linkname
  - e.g.

    - ```shell
      ln file1 hard1
      ```

  - Important: You should not create hard links for directories.

### Soft Links

1. They have different inode number with reference to the original file
2. They have a smaller file size with reference to the original file
3. If you delete the original file, soft links will becom useless.

- ln

  - flag
    - ­-s
  - Makes a pointer to another file
  - Syntax: ln -s Originalfile Linkname
  - e.g.

    - ```shell
      ln ­-s file1 soft1
      ```

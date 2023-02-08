# Basic Commands

## pwd - print working directory

Writes the full pathname of the current working directory to the standard output.

## cd - change directory

Change the current working directory.

A directory is a logical section of a file system used to hold files. Directories may also contain other directories. The cd command can be used to change into a subdirectory, move back into the parent directory, move all the way back to the root directory or move to any given directory.

### Options

```
cd
cd ~
will always put the user in their home directory.

cd ~username
will put the user in the username's home directory.

cd .
will leave the user in the same directory they are currently in.

cd .. will move the user up one directory.

cd -
Will switch the user to the previous directory.
```

## ls - list

List computer files and directories.

When invoked without arguments, ls lists the files in the working directory. If a directory is specified, the files in that directory are listed. The arguments may contain a multiple files and directories.

### Syntax

```
ls [options] [file… | directory …]
```

### Options

Without options, ls displays names only. Multiple options may be combined. Common options include:

```
ls -l
Long format, displaying Unix file types, permissions, number of hard links, owner, group, size, last-modified date-time and name.

ls -R
Recursively list items in subdirectories and subdirectories …

ls -t
Sort the list by modification time.

ls -r
Reverse the order.

ls -1
One entry per line.

ls -m
Stream format; list items across the page, separated by commas.

ls -g
Include group but not owner.

ls -o
Include owner but not group.

ls -og
When combined both group and owner are suppressed.

ls -F
Append a "/" to directory names.
```

## mkdir - make directory

Make a new directory.

### Syntax

```
mkdir [options] [directory_name]
```

### Options

```
mkdir -p
Parents or path, will also create all directories leading up to the given directory that do not exist already. Often used when using mkdir to build up complex directory hierarchies, in case a necessary directory is missing or already there.

mkdir -m
Mode, specify the octal permissions of directories created by mkdir.Commonly used to lock down temporary directories used by shell scripts.
```

## touch

A command used to update the access date and/or modification date of a computer file or directory.

In its default usage, it is the equivalent of creating or opening a file and saving it without any change to the file contents.

The touch command can be useful for quickly creating files for programs or scripts that require a file with a specific name to exist for successful operation of the program, but do not require the file to have any specific content.

touch avoids opening, saving, and closing the file. Instead it simply updates the dates associated with the file or directory. An updated access or modification date can be important for a variety of other programs such as backup utilities or the make command-line interface programming utility. Typically these types of programs are only concerned with files which have been created or modified after the program was last run.

## date – display or set date and time

When invoked without arguments, the date utility displays the current date and time. Otherwise, depending on the options specified, date will set the date and time or print it in a user-defined way.

### Options

```
date -I
Use ISO 8601 output format.
ex: 2023-02-06

date -R
Use RFC 2822 date and time output format.
ex: Mon, 06 Feb 2023 19:11:10 +0100

date -r seconds
Print the date and time represented by seconds, where seconds is the number of
seconds since the Epoch (00:00:00 UTC, January 1, 1970; see time(3)), and can be specified in decimal, octal, or hex.

date -r filename
Print the date and time of the last modification of filename.

date -u
Display or set the date in UTC (Coordinated Universal) time.
Mon Feb 6 18:13:01 UTC 2023
```

## cat - (con)catenate files

Reads files sequentially, writing them to standard output.

### Syntax

```
cat [options] [file_names]
```

### Options

```
cat -n
Number all output lines.

cat -b
Number non-blank output lines.

cat -v
Displays nonprinting characters, except for tabs and the end of line character.

cat -e
Implies -v but also display end-of-line characters as $.


cat -s
Squeeze multiple adjacent blank lines.

cat -t
Implies -v, but also display tabs as ^I.

cat -u
Use unbuffered I/O for stdout.
```

## rm - remove

Used to remove objects such as computer files, directories and symbolic links from file systems and also special files such as device nodes, pipes and sockets

Removes references to objects from the filesystem using the unlink system call.

The command generally does not destroy file data, since its purpose is really merely to unlink references, and the filesystem space freed may still contain leftover data from the removed file.

## Options

rm doesn't delete a directory by default.

```
rm -r
"recursive", removes directories, removing the contents recursively beforehand.

rm -i
"interactive", asks for every deletion to be confirmed.

rm -f
"force", ignores non-existent files and overrides any confirmation prompts (effectively canceling -i), although it will not remove files from a directory if the directory is write-protected.

rm -v
"verbose," prints what rm is doing onto the terminal.

rm -d
"directory", deletes an empty directory, and only works if the specified directory is empty.
```

## cp - copy

Copying files and directories.

The command has three principal modes of operation. These modes are inferred from the type and count of arguments presented to the program upon invocation.

- Copying a file to another file
  When the program has two arguments of path names to files, the program copies the contents of the first file to the second file, creating the second file if necessary.

- One or more files to a directory
  When the program has one or more arguments of path names of files and following those an argument of a path to a directory, then the program copies each source file to the destination directory, creating any files not already existing.

- Copying entire directories to another directory
  When the program's arguments are the path names to two directories, cp copies all files in the source directory to the destination directory, creating any files or directories needed. This mode of operation requires an additional option flag, typically r, to indicate the recursive copying of directories. If the destination directory already exists, the source is copied into the destination, while a new directory is created if the destination does not exist.

### Options

```
cp -f
force – specifies removal of the target file if it cannot be opened for write operations. The removal precedes any copying performed by the cp command.

cp -H
dereference – makes the cp command follow symbolic links (symlinks) so that the destination has the target file rather than a symlink to the target.

cp -i
interactive – prompts with the name of a file to be overwritten. This occurs if the TargetDirectory or TargetFile parameter contains a file with the same name as a file specified in the SourceFile or SourceDirectory parameter.

cp -n
no clobbering – prevents accidentally overwriting any files

cp -p
preserve – preserves the following characteristics of each source path in the corresponding target:
    - time of the last data modification
    - time of the last access
    - ownership (only if it has permissions to do this)
    - file permission-bits

cp -R or -r
recursive – copy directories recursively
```

## mv - move

Moves one or more files or directories from one place to another.

If both filenames are on the same filesystem, this results in a simple file rename; otherwise the file content is copied to the new location and the old file is removed.

Using mv requires the user to have write permission for the directories the file will move between.

### Options

```
mv -i
interactive - write a prompt to standard output before moving a file that would overwrite an existing file.

mv -f
force - overwriting the destination.
```

## wc - word count

The program reads either standard input or a list of computer files and generates one or more of the following statistics: newline count, word count, byte count.

# Options

```
wc -c [filename, ...]
Prints the byte count

wc -l [filename, ...]
Prints the line count

wc -m [filename, ...]
Prints the character count

wc -w [filename, ...]
Prints the word count
```

## grep - global regular expression print

Searching plain-text data sets for lines that match a regular expression.

### Syntax

```
grep [pattern] [file ...]
```

If no file arguments are specified, the standard input is used.

```
cat [file] | grep [pattern]
```

### Options

```
-A num, --after-context=num
Print num lines of trailing context after each match. See also the -B and -C
options.

-B num, --before-context=num
Print num lines of leading context before each match. See also the -A and -C
options.

-C[num], --context[=num]
Print num lines of leading and trailing context surrounding each match. The
default value of num is “2” and is equivalent to “-A 2 -B 2”. Note: no
whitespace may be given between the option and its argument.

-c, --count
Only a count of selected lines is written to standard output.

--colour=[when], --color=[when]
Mark up the matching text with the expression stored in the GREP_COLOR
environment variable. The possible values of when are “never”, “always” and
“auto”.

-D action, --devices=action
Specify the demanded action for devices, FIFOs and sockets. The default action
is “read”, which means, that they are read as if they were normal files. If the
action is set to “skip”, devices are silently skipped.

-d action, --directories=action
Specify the demanded action for directories.

- “read” by default, which means that the directories are read in the same manner as normal files.
- “skip” to silently ignore the directories
- “recurse” to read them recursively, which has the same effect as the -R and -r option.

-e pattern, --regexp=pattern
Specify a pattern used during the search of the input: an input line is selected if it matches any of the specified patterns. This option is most useful when multiple -e options are used to specify multiple patterns, or when a pattern begins with a dash (‘-’).

-f file, --file=file
Read one or more newline separated patterns from file. Empty pattern lines match every input line. Newlines are not considered part of a pattern. If file is empty, nothing is matched.

-H Always print filename headers with output lines.

-i, --ignore-case
Perform case insensitive matching. By default, grep is case sensitive.

-L, --files-without-match
Only the names of files not containing selected lines are written to standard
output. Pathnames are listed once per file searched. If the standard input is
searched, the string “(standard input)” is written unless a --label is specified.

-l, --files-with-matches
Only the names of files containing selected lines are written to standard output. grep will only search a file until a match has been found, making searches potentially less expensive. Pathnames are listed once per file searched. If the standard input is searched, the string “(standard input)” is written unless a --label is specified.

-m num, --max-count=num
Stop reading the file after num matches.

-n, --line-number
Each output line is preceded by its relative line number in the file, starting at line 1. The line number counter is reset for each file processed. This option is ignored if -c, -L, -l, or -q is specified.

-o, --only-matching
Prints only the matching part of the lines.

-R, -r, --recursive
Recursively search subdirectories listed. (i.e., force grep to behave as rgrep).

-v, --invert-match
Selected lines are those not matching any of the specified patterns.

-x, --line-regexp
Only input lines selected against an entire fixed string or regular expression
are considered to be matching lines.
```

## find

A command-line utility that locates files based on some user-specified criteria and either prints the pathname of each matched object or, if another action is requested, performs that action on each matched object.

### Syntax

```
find path... [operand_expression...]
ex: find . -name filename
```

### Options

-name [patter]
find file by name.

-type
"f" for file
"d" for directory

-maxdepth num
Max number of subdirectory levels to look in.

-mtime num
files modified x num ago.

-atime num
files accessed x num ago.

-size n
True if the file's size, rounded up, in 512-byte blocks is n. If n is followed by a c, then the primary is true if the file's size is n bytes (characters).
Similarly if n is followed by a scale indicator then the file's size is compared to n scaled as:

             k       kilobytes (1024 bytes)
             M       megabytes (1024 kilobytes)
             G       gigabytes (1024 megabytes)
             T       terabytes (1024 gigabytes)
             P       petabytes (1024 terabytes

## chmod – change file modes or Access Control Lists

The who symbols 'u', 'g', and 'o' specify the user, group, and other parts of the mode bits, respectively. The who symbol 'a' is equivalent to 'ugo'.

### Options

#### Symbols

The perm symbols represent the portions of the mode bits as follows:

```
- r
  The read bits.
- w
  The write bits.
- x
  The execute/search bits.
- s
  The set-user-ID-on-execution and set-group-ID-on-execution bits.
- t
  The sticky bit.
- u
  The user permission bits in the original mode of the file.
- g
  The group permission bits in the original mode of the file.
- o
  The other permission bits in the original mode of the file.
```

Operations with the perm symbol 'x' are only meaningful in conjunction with the op symbols, and are ignored in all other cases.

The op symbols represent the operation performed, as follows:

```
- "+"
  Add
- "-"
  Remove
```

#### Numbers

Diferent perms have diferent values.
r = 4
w = 2
x = 1

The sum and position determine file perms.

Ex:

We give read and write access to users.
u has rw that is 4 + 2 = 6
We give group and others only readaccess.
g has r that is 4
o has r that is 4

So:

chmod 644 filename.

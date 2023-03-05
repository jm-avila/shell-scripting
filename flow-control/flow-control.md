# Flow Control

## If

```
if [ condition ]
then
    code
elif [ condition ]
then
    code
else
    code
fi
```

```
if [ condition ]; then
    code
elif [ condition ]; then
    code
else
    code
fi
```

### Many conditions

#### And

```
if [ condition ] && [ condition ]; then
    code
fi
```

#### Or

```
if [ condition ] || [ condition ]; then
    code
fi
```

### Negate Condition

```
if ! [ condition ]; then
    code
fi
```

```
if [ ! condition ]; then
    code
fi
```

## Conditions

- Math Comparison
- String Comparison
- Filesystem related test

### Math Comparison

Operands:

- -eq
  - equal
- -ne
  - not equal
- -gt
  - greater than
- -ls
  - less than
- -ge
  - greater than or equal
- -le
  - less than or equal

### String Comparison

- =
  - equal
- !=
  - not equal

It is recommended to set the variables within "" to prevent errors in case variables are not defined.

```
[ "$STR1" = "$STR2" ]
[ "$STR1" != "$STR2" ]
```

When can alse use [[]] to prevent the issues.

```
[[ $STR1 = $STR2 ]]
[[ $STR1 != $STR2 ]]
```

Other operands:

- -z

  - True if string is empty
  - ```
    [ -z "$STR1" ]
    [[ -z $STR1 ]]
    ```

- -n
  - True if string not empty
  - ```
    [ -n "$STR1" ]
    [[ -n $STR1 ]]
    ```

Alphabetical Comparison of string:

- [[$STR1 > $STR2]]
- [[$STR1 < $STR2]]

### Wildcards (globbing patterns)

| Symbol | Description                              | Example                 | Example Matches                              |
| ------ | ---------------------------------------- | ----------------------- | -------------------------------------------- |
| ?      | Single Character                         | hel?                    | help, hell, hel1 ...                         |
| \*     | Any number of characters, including zero | ca\*                    | ca, car, carpet, carpenter ...               |
| []     | Single character from range              | file[0-2] <br> [hd]ello | file0, file1, file2 <br> hello or dello      |
| {}     | Comma separated terms                    | {_.txt, _.pdf}          | hello.txt, doc.txt, source.pdf, book.pdf ... |
| [!]    | Any character not listed in brackets     | file[!1]                | file2, file3 ...                             |
|        |                                          |                         |                                              |

#### Wildcards in string comparison:

```
[[ $STR1 == string-with-wildcards ]]
[[ $STR1 == file[0-9].txt ]]
[[ $STR1 == rich* ]]

```

### Regular Expressions

| Symbol | Description                                                         | Example         | Example Matches                                     |
| ------ | ------------------------------------------------------------------- | --------------- | --------------------------------------------------- |
| .      | Any sinlge character                                                | bo.k            | book, bo1k ...                                      |
| \*     | Preceding item must match zero or more times                        | co\*l           | cl, col, cool ...                                   |
| ^      | Start of the line marker                                            | ^hello          | line starting with hello                            |
| $      | End of the line marker                                              | $hello          | line ending with hello                              |
| []     | Any one of characters enclosed in []                                | coo[kl]         | cook or cool                                        |
| [ - ]  | Any one of characters withing the range                             | file[1-3]       | file1, file2, file3                                 |
| [^]    | Any character except those enclosed in brackets                     | file[^01234567] | file8, file 9                                       |
| ?      | Preceding item must match one or zero times                         | colou?r         | color, colour <br> NOT colouur                      |
| +      | Preceding item must match one or more times                         | file1+          | file1, file11, file111 <br> NOT file                |
| {n}    | Preceding items must match n times                                  | [0-9]{3}        | Any three digits number: 111, 097 ...               |
| {n,}   | Minimum number of times the preceding item should match             | [0-9]{3,}       | Any three or more digits number: 111, 1234 ...      |
| {n,m}  | Minimum and Maximum number of times the preceding item should match | [0-9]{1,3}      | Any number between one and three digits: 1, 12, 123 |
| \      | Escape special character                                            | \.com           | .com                                                |
|        |                                                                     |                 |                                                     |

#### Regular Expressions in string comparison:

```
REGEX="http://.*\.jpg"
[[ $STR1 =~ $REGEX ]]
```

#### Regular Expressions in bash:

- $BASH_REMATCH is an array and contains the matches of a regular expression.
- ${BASH_REMATCH[0]} contains the complete match of the regular expression.
- The remaining elements contain the matches of () subexpressions. ${BASH_REMATCH[1]} contains the match of the 1st () expression, ${BASH_REMATCH[2]} contains the match of the 2nd () expression, and so on.

```
text="name=value with spaces"
[[ $text =~ ^([a-z]+)=(.*)$ ]]
echo all: "${BASH_REMATCH[0]}"
echo name: "${BASH_REMATCH[1]}"
echo value: "${BASH_REMATCH[2]}"
```

### Useful characters classes to use within []

| Class     | Meaning                                    |
| --------- | ------------------------------------------ |
| [:upper:] | Uppercase character                        |
| [:lower:] | Lowercase character                        |
| [:alpha:] | Alphabetic character                       |
| [:digit:] | Number character                           |
| [:alnum:] | Alphanumeric character                     |
| [:space:] | Whitespace character (space, tab, newline) |
|           |                                            |

### Filesystem Operators

| File test operators | Description                                          |
| ------------------- | ---------------------------------------------------- |
| [ -e $VAR ]         | True if variable holds an existing file or directory |
| [ -f $VAR ]         | True if variable holds an existing file              |
| [ -d $VAR ]         | True if variable holds an existing directory         |
| [ -x $VAR ]         | True if variable is an executable file               |
| [ -L $VAR ]         | True if variable holds the path of a symlink         |
| [ -r $VAR ]         | True if variable holds a file that is readable       |
| [ -w $VAR ]         | True if variable holds a file that is writable       |
| [ -x $VAR ]         | True if variable holds a file that is executable     |
|                     |                                                      |

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

#### Useful characters classes to use within []

| Class     | Meaning                                    |
| --------- | ------------------------------------------ |
| [:upper:] | Uppercase character                        |
| [:lower:] | Lowercase character                        |
| [:alpha:] | Alphabetic character                       |
| [:digit:] | Number character                           |
| [:alnum:] | Alphanumeric character                     |
| [:space:] | Whitespace character (space, tab, newline) |
|           |                                            |

#### Wildcards in string comparison:

```
[[ $STR1 == string-with-wildcards ]]
[[ $STR1 == file[0-9].txt ]]
[[ $STR1 == rich* ]]

```

### Regular Expressions

Regular Expressions

- [[$STR1 =~ $regex]]

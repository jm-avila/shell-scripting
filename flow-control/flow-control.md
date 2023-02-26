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

Wildcards

- [[$STR1 == string-with-wildcards]]

Regular Expressions

- [[$STR1 =~ $regex]]

# Loops

## For Loops

Syntax:

```
for arg in [list]
do
    command
done
```

Iterate a list

```
for NUMBER in {1..10}
do
    echo $NUMBER
done
```

### Internal Field Separator (IFS)

IFS is a special shell variable that determines how Bash recognizes word boundaries while splitting a sequence of character strings.

The default values are: space, tab, and newline.

```
IFS=$' \t\n'
```

Check value with:

```
set | grep ^IFS
```

```
STRING="foo bar foobar"
for i in $STRING
do
    echo "'$i' is the substring"
done
```

Output:

```
'foo' is the substring
'bar' is the substring
'foobar' is the substring
```

We get the individual substring because space is one of the IFS variable’s default values.

### Wildcards

Loop through all files in current directory using \*

```
for FILE in *
do
    echo $FILE
done
```

It also works like a regex.

Loop through files that match a pattern in current directory using \*

```
for FILE in *.txt
do
    echo $FILE
done
```

### C style

No need for $ whithin double brackets (())

```
for ((i=1;i<=10;i++))
do
    echo $i
done
```

### Loop through arguments

```
for ARG in "$@"
do
    echo $ARG
done
```

## While Loops

Syntax:

```
while [condition]
do
    command
done
```

Example:

```
while [ "$NAME" != "stop" ]
do
    echo -n Enter your name:
    read NAME
done
```

### C Style

No need for $ whithin double brackets (())

Syntax:

```
while ((condition))
do
    command
done
```

Example:

```
A=1
LIMIT=10
while (( A < LIMIT >))
do
    echo $A
    ((A++))
done
```

### Reading Files

By redirecting STDIN of a file into while loop

```
while read line
do
    echo $line
done < "$FILENAME"
```

By piping file contents

```
cat "$FILENAME" |
while read line
do
    echo $line
done
```

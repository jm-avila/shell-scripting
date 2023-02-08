# Arguments

## Used for:

- Passing values into a script
- Passing values into a function

Example:

```
./arguments.sh one two three
```

## Accessing them from a script

```
$0 - script name
$1 - first argument
$@ - all arguments as a list
$* - all arguments as a string separated with the interal field separator.
$# - arguments count
```

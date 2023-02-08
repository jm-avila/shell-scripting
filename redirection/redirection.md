# Redirection

Every command line program has three data streams:

- STDIN (0) - Standar Input (Data provided to the program)
- STDOUT (1) - Standar Output (Data provided by program, terminal is default)
- STDERR (2) - Standar Error (Error messages by program, terminal is default)

Example:

If to a file it overwrites the content.

```
cat file.txt > output.txt
cat file.txt 1> output.txt
cat file.txt 2> error.txt
cat file.txt 1> output.txt 2> error.txt
cat file.txt &> output&error.txt
```

If to a file it adds a line to the content.

```
cat file.txt >> output.txt
cat file.txt 1>> output.txt
cat file.txt 2>> error.txt
cat file.txt 1>> output.txt 2>> error.txt
cat file.txt &>> output&error.txt
```

You can also pass output to the stdin of another command.

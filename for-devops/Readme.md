What is shell ? is a program that provides an interface between the user and the operating system.
What is bash ? is just one flavor or program of shell.. others are (sh, zshell)
What is shell script ? is a text file containing a sequence of commands that a shell can interpret and execute.

##### Commands

```
# moving item/s
$ mv *.log logs/
```

```
# moving to shell script | like a snippets
find . -name "\*.log" -mtime 1

grep "ERROR" application.log
grep -c "ERROR" application.log
grep -c "FATAL" application.log

grep -c "FATAL" system.log
grep -c "CRITICAL" system.log
grep "CRITICAL" system.log

```

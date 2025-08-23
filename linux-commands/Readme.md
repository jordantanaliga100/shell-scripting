###### Basic SSH commands

SSH
Usage: ssh user@server
Function: Connects to a Linux machine remotely.

LS
Usage: ls, ls -l, ls -a
Function: Lists files in the current directory, with options for detailed view and hidden files.

PWD
Usage: pwd
Function: Prints the current working directory.

CD
Usage: cd path, cd .., cd
Function: Changes the current directory to the specified path.

Touch
Usage: touch filename
Function: Creates a new file or updates the timestamp of an existing file.

Echo
Usage: echo 'text' > file
Function: Displays text or redirects it to a file.

Nano
Usage: nano filename
Function: Opens a file in the Nano text editor.

Vim
Usage: vim filename
Function: Opens a file in the Vim text editor.

Cat
Usage: cat filename
Function: Concatenates and displays the content of files.

Shred
Usage: shred filename
Function: Overwrites a file to hide its contents, and optionally deletes it.

MKDIR
Usage: mkdir directoryname
Function: Creates a new directory.

CP
Usage: cp file destination
Function: Copies files and directories.

MV
Usage: mv file destination
Function: Moves or renames files and directories.

RM
Usage: rm file, rm -r directory
Function: Removes files or directories.

LN
Usage: ln -s file link
Function: Creates a symbolic link to a file.

Clear
Usage: clear
Function: Clears the terminal screen.

Whoami
Usage: whoami
Function: Displays the current user’s username.

Adduser
Usage: sudo adduser username
Function: Adds a new user to the system.

Sudo
Usage: sudo command
Function: Executes a command with superuser privileges.

SU
Usage: su username
Function: Switches the current user to another user.

Exit
Usage: exit
Function: Exits the current session or shell.

Passwd
Usage: passwd username
Function: Changes the password for a user.

APT
Usage: sudo apt update, sudo apt install package
Function: Handles package installation and updates on Debian-based systems.

Finger
Usage: finger username
Function: Displays information about a user.

Man
Usage: man command
Function: Displays the manual page for a command.

Whatis
Usage: whatis command
Function: Displays a one-line description of a command.

Which
Usage: which command
Function: Shows the path to the command’s executable.

Wget
Usage: wget URL
Function: Downloads files from the internet.

Curl
Usage: curl URL > file
Function: Transfers data from or to a server.

Zip
Usage: zip file.zip file
Function: Compresses files into a zip archive.

Unzip
Usage: unzip file.zip
Function: Extracts files from a zip archive.

Less
Usage: less filename
Function: Views the content of a file one page at a time.

Head
Usage: head filename
Function: Displays the first few lines of a file.

Tail
Usage: tail filename
Function: Displays the last few lines of a file.

CMP
Usage: cmp file1 file2
Function: Compares two files byte by byte.

Diff
Usage: diff file1 file2
Function: Displays the differences between two files.

Sort
Usage: sort filename
Function: Sorts the lines of a file.

Find
Usage: find directory -name filename
Function: Searches for files in a directory hierarchy.

CHMOD
Usage: chmod +x filename
Function: Changes the file mode (permissions).

CHOWN
Usage: chown user filename
Function: Changes the owner of a file.

Ifconfig
Usage: ifconfig
Function: Configures network interfaces.

IP 42
Usage: ip address
Function: Shows and manipulates routing, devices, policy routing, and tunnels.

Grep
Usage: grep pattern file
Function: Searches for patterns in files.

Awk
Usage: awk pattern file
Function: A versatile programming language for working on files.

Resolveconf
Usage: resolveconf status
Function: Manages the system’s DNS resolver configuration.

Ping
Usage: ping hostname
Function: Checks the reachability of a host on an IP network.

Traceroute
Usage: traceroute hostname
Function: Traces the route packets take to a network host.

Netstat
Usage: netstat, netstat -tulpen
Function: Displays network connections, routing tables, interface statistics, masquerade connections, and multicast memberships.

SS
Usage: ss -tulpen
Function: Another utility to investigate sockets.

UFW
Usage: ufw allow port, ufw status, ufw enable
Function: Uncomplicated Firewall, a frontend for managing firewall rules.

Uname
Usage: uname, uname -a
Function: Prints system information.

Neofetch
Usage: neofetch

Function: Shows system information with an image.

Cal
Usage: cal
Function: Displays a calendar.

Bc
Usage: echo "scale=2; 10/3" | bc
Function: An arbitrary precision calculator language.

Free
Usage: free
Function: Displays the amount of free and used memory in the system.

DF
Usage: df -h
Function: Reports file system disk space usage.

PS
Usage: ps aux
Function: Reports a snapshot of the current processes.

Top
Usage: top
Function: Displays Linux processes.

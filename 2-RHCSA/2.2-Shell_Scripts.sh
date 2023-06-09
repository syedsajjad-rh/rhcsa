2-Create simple shell scripts
Conditionally execute code (use of: if, test, [], etc.)
Use Looping constructs (for, etc.) to process file, command line input
Process script inputs ($1, $2, etc.)
Processing output of shell commands within a script



$script terminal.txt
starts terminal recording, ctrl+D to exit

while true ; do clear ; df -h ; sleep 5 ; done

    #!/bin/bash

    # script to add users
    # takes input file with usernames

    # user name file
USERFILE=$1

if [ "$USERFILE" = "" ]
then
        echo "Please specify an input file!"
        exit 10

elif test -e $USERFILE
then
        for user in `cat $USERFILE`
        do
        echo "Creating the "$user" user..."
                useradd -m $user
        done
        exit 20
else
        echo "Invlid input file specified!"
        exit 30
fi

echo "azam hassan faizan shahrukh > file.txt
./create_users.sh file.txt
grep -E 'azam|hassan|faizan|shahrukh' /etc/passwd
echo $? (tells exit code) we know script ran successfully

root@x230:~/yum.sh
2 types of looping constructs used in shell scripts
while and for
done command is used to close these loops

VIM STOP INDENTATION
:setl nocin nosi noai inde=
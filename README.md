# backup_bash_script
A simple bash script to backup my notes directory onto the school ssh server
## What it does
The backup.sh file uses rsync to sync the contents of the directory specificied onto a remote directory on a server you have ssh access to. 
The backup_on_change uses inotifywait to wait for a file to be changed in the directory specified and calls the backup when a file in that directory is changed.

## Setup:
1. create a bin dir in the home dir to place the scripts or place them in the usr/local/bin.
2. Edit the bash script to fill out the variables for path to directory to backup, remote server, etc
3. Wherever you decide to place the scripts make sure that directory is included in the $PATH.
   1. To check your path:
`echo $PATH`

   2. If your directory is not included in the $PATH. Include it by adding the following line to the .bashrc file in the home directory 
`export PATH=$PATH:/PATH_YOU_WANT_TO_INCLUDE`

ex:
`export PATH=$PATH:/home/Morris/bin`

4. set up passwordless ssh if you haven't
  1. `ssh-keygen`
  2. `ssh-copy-id user@hostname`
5. make sure the bash scripts are executables if they are not use
`chmod +x backup.sh`
`chmod +x backup_on_change.sh`

Now you can type backup.sh from anywhere and the script will run. Same with backup_on_change.sh

## Optional: (not working yet, need more debugging)
6. To make backup_on_change.sh run on startup

`crontab -e`

Then add the following line to the file:

@reboot sh /PATH_TO_SCIPT

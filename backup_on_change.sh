#usr/bin/bash 

DIR_TO_WATCH=""
inotifywait -m -r -e create -e modify -e delete -e move $DIR_TO_WATCH |
   while read path action file; do
       echo "File changed in {$DIR_TO_WATCH}"
       source backup.sh
   done


#!/bin/bash
# Used to clean up podcasts fetched by bashpodder.
# Will clean up month old podcast, to be ran once a week.

OLDDATE=`date --date="31 days ago" +%s`
TODAY=`date`
DATADIR=$HOME/Dropbox/Podcasts/

for cast in $(find $DATADIR -type f);
do
    if [[ ($cast == *.mp3) && ($OLD_DATE -ge `stat -c %Y $cast | cut -d ' ' -f1`) ]]; then
        rm $cast
        echo Removing $cast on `date` >> /$HOME/Dropbox/Podcasts/bashpodder_cleanup.log
    fi
done

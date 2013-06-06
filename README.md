## Bashpodder ##
This is my modified version of the bashpodder podcatcher script. The
original is available at <http://lincgeek.org/bashpodder>. Ellen made
the following modifications:

### Only filenames placed in log ###

To prevent redownloading files when only the url has changed, only the
filename will be checked instead of the full url.

### Only download the latest file ###

Rather than attempt to download every file in the feed, only the
latest file will be downloaded.

## Raymond Tang ##

I removed some of the features that I did not use (playlist/folder)  
I also added a cleaner.sh task and a notification task via Notify My Android.

To use the notification task, the nma.sh must be placed or symbolically linked into your path.

I kept the same feed format was Ellen (url foldername) but instead used foldername as a prepending filename.  
This was because it was easier to play and view the entire podcast collection at the same time. Especially if it was not too large.

My usecase is to place this onto a raspberrypi, cronjob it daily to pull podcasts.  
Cronjob cleaner.sh weekly to remove month old podcasts.

## Bashpodder ##
This is my modified version of the bashpodder podcatcher script. The
original is available at <http://lincgeek.org/bashpodder>. Ellen made
the following modifications:

### Separate folders for each podcast ###

Instead of the default behavior of all podcasts downloaded going into
the same subdirectory, each podcast will use it's own subdirectory. As
such the method of defining podcast feeds in 'bp.conf'. Instead of the
standard:

> http://podcastfeedurl.com/rss

Feeds are defined as:

> http://podcastfeedurl.com/rss feeddir

'feeddir' being the subdirectory for that particular feed.

### Only filenames placed in log ###

To prevent redownloading files when only the url has changed, only the
filename will be checked instead of the full url.

### Only download the latest file ###

Rather than attempt to download every file in the feed, only the
latest file will be downloaded.

## Raymond Tang ##

I removed some of the features that I did not use (playlist) and added a cleaner.sh file.

My usecase is to place this onto a raspberrypi, cronjob it daily to pull podcasts.
Cronjob cleaner.sh weekly to remove month old podcasts.
Cronjob new podcasts notifications every morning and shoot a text message or email.

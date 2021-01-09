# logs

A staging area for viewing CloudFlare logs with [GoAccess](https://goaccess.io).

Sync logs from S3:

    bin/sync

Open GoAccess in terminal:

    gunzip -c logs-brandur/brandur.org/*.gz | grep --line-buffered -v -E -f exclude_list.txt | goaccess - -p conf/goaccess.conf

Render as HTML:

    gunzip -c logs-brandur/brandur.org/*.gz | grep --line-buffered -v -E -f exclude_list.txt | goaccess - -p conf/goaccess.conf -o report.html

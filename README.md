# logs

A staging area for viewing CloudFlare logs with [GoAccess](https://goaccess.io).

Sync logs from S3:

    bin/sync

Open GoAccess:

    gunzip -c brandur-logs/brandur.org/*.gz | goaccess - -p conf/goaccess.conf

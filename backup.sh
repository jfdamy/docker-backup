#!/bin/sh

# Get timestamp
: ${BACKUP_SUFFIX:=.$(date +"%Y-%m-%d-%H-%M-%S")}
readonly tarball=$BACKUP_NAME$BACKUP_SUFFIX.tar.gz

# Create a gzip compressed tarball with the volume(s)
tar czf $tarball $BACKUP_TAR_OPTION $PATHS_TO_BACKUP

# Upload the backup to S3 with timestamp
aws s3 --region $AWS_DEFAULT_REGION cp $tarball s3://$S3_BUCKET_NAME/$tarball

#remove backup
rm $tarball
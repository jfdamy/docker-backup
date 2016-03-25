# docker-backup

A simple docker backup to aws S3 container

Env var :
  S3_BUCKET_NAME docker-backups.example.com
  AWS_ACCESS_KEY_ID **DefineMe**
  AWS_SECRET_ACCESS_KEY **DefineMe**
  AWS_DEFAULT_REGION us-east-1
  PATHS_TO_BACKUP /paths/to/backup
  BACKUP_NAME backup
  RESTORE false
  CRON_TIME "0 0 * * *"

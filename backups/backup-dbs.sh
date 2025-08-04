#!/bin/sh

# Dump DATABASES and copy to DropBox

export DB_HOST=localhost
export DB_USERNAME=postgres
export BACKUP_FOLDER=/Volumes/Data/Dropbox/Mac-Mini-Work/db-backups/postgresql@16

function dump_local_db() {

  local ts=`date "+%Y%m%d-%H%M%S"`
  local DB_NAME="${1}"
  local SUB_FOLDER="${2}"

  mkdir -p "${BACKUP_FOLDER}/${SUB_FOLDER}"

  local BACKUP_FILE="${BACKUP_FOLDER}/${SUB_FOLDER}/${DB_NAME}-backup-${ts}.pgdump.tar"

  echo "================================================================================="
  echo "Backup ${DB_NAME} > ${BACKUP_FILE}"

  # PGPASSWORD=${DB_PASSWORD}

  pg_dump \
    --host="${DB_HOST}" \
    --port=5432 \
    --dbname="${DB_NAME}" \
    --username="${DB_USERNAME}" \
    --file="${BACKUP_FILE}" \
    --format=t \
    --verbose \
    --no-privileges \
    --no-owner

  echo "================================================================================="
  echo "ZIPPING ${BACKUP_FILE}"
  gzip ${BACKUP_FILE}
  echo "================================================================================="

}


dump_local_db "fsat_development" "fsat_development"
dump_local_db "neith_platform_db" "neith_platform_db"
dump_local_db "neith_platform_db_production" "neith_platform_db_production"
## dump_local_db "tsedb_uat"

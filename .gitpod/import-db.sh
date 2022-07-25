source .gitpod/add-ssh-forwarding.sh

ddev snapshot
ssh -C ploi@157.90.244.232 "mysqldump --lock-tables=false horizonequity" > /tmp/db.sql
cat /tmp/db.sql | ddev import-db
source .gitpod/add-ssh-forwarding.sh

rsync -avP ploi@157.90.244.232:/home/ploi/www.horizonequity.co.za/web/uploads/. $GITPOD_REPO_ROOT/web/uploads/. 
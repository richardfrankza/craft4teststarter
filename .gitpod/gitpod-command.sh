# Gitpod Command runs every time after init 
# Put commands in here that are long running

ddev start -y

# Backend
source .gitpod/add-ssh-forwarding.sh

# Import Database and Files comment out if not required
ddev import-db -f db.sql.gz
# bash .gitpod/import-db.sh
# bash .gitpod/import-files.sh

# Frontend
source $HOME/.nvm/nvm.sh
nvm use 16
npx tailwindcss -i ./src/css/input.css -o ./web/output.css --watch

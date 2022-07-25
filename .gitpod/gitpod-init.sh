# Gitpod init runs when the workspace is first initialised (after a new commit)
# Add dependencies that can be installed in the background here

# Start DDEV
ddev start -y
mkcert -install

# Node
source $HOME/.nvm/nvm.sh
nvm use 14
npm install

# App
cp .env.gitpod .env
ddev composer install --no-interaction

# Bookmark done
gp sync-done ddev

# This has to be source not bash 
# https://superuser.com/questions/176783/what-is-the-difference-between-executing-a-bash-script-vs-sourcing-it

echo "
********
Run the following command in your terminal to add port fowarding agent to your context. 
This will allow you to deploy to remote servers. 

source .gitpod/add-ssh-forwarding.sh

" 

exit 0

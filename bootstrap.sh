# Change the default algorithm to a slower one that is sometimes better
git config --global diff.algorithm patience
# This is the default now
# git config --global gc.writeCommitGraph true
# This is the default now
# git config --global protocol.version 2
# If I initiate a rebase and have local changes it will shash them first and unstash after the rebase
git config --global rebase.autoStash true
# By default all pulls should use rebase rather than marge
git config --global pull.rebase true
# By default only push the branch I'm on
git config --global push.default current
# Handy shortcuts
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.unstage "reset HEAD --"
git config --global alias.st status
# This pushes the current branch (push.default current will have git push do this by default)
git config --global alias.pushc '!f() { git push origin `git rev-parse --abbrev-ref HEAD`; }; f'
# This pushes the pull the current branch you have checked out using a rebase
git config --global alias.pullc '!f() { git pull origin `git rev-parse --abbrev-ref HEAD`; }; f'
# When not on the master branch, this wlll fetch the latest copy of master and update your local one
git config --global alias.fetchm "fetch origin master:master"
# This will pull master into your branch using a rebase
git config --global alias.pullm "pull origin master"
# neovim as the default message editor
git config --global core.editor nvim

echo "alias g='git'" >> ~/.zshrc
echo 'export HISTFILE=~/.zsh_history' >> ~/.zshrc
echo 'export HISTSIZE=10000' >> ~/.zshrc
echo 'export SAVEHIST=1000' >> ~/.zshrc
echo 'setopt SHARE_HISTORY' >> ~/.zshrc

git config --global diff.algorithm patience
git config --global gc.writeCommitGraph true
git config --global protocol.version 2
git config --global rebase.autoStash true
git config --global pull.rebase true
git config --global push.default current
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.unstage "reset HEAD --"
git config --global alias.st status
git config --global alias.pushc "push origin `git rev-parse --abbrev-ref HEAD`"
git config --global alias.pullc '!f() { git pull origin `git rev-parse --abbrev-ref HEAD`; }; f'
git config --global alias.fetchm "fetch origin master:master"
git config --global alias.pullm "pull origin master"
git config --global core.editor nvim

echo "alias g='git'" >> ~/.zshrc
echo 'export HISTFILE=~/.zsh_history' >> ~/.zshrc
echo 'export HISTSIZE=10000' >> ~/.zshrc
echo 'export SAVEHIST=1000' >> ~/.zshrc
echo 'setopt SHARE_HISTORY' >> ~/.zshrc

[ -d $HOME/.ssh ] || mkdir -p $HOME/.ssh
echo "IdentityFile /var/lib/r10k/auth/ssh-privatekey" > $HOME/.ssh/config

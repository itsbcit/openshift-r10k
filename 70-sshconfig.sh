[ -d $HOME/.ssh ] || mkdir -p $HOME/.ssh
cat << EOF > $HOME/.ssh/config
IdentityFile /var/lib/r10k/auth/ssh-privatekey
StrictHostKeyChecking no
EOF

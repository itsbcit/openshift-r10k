if [ -d $HOME ];then
    echo "*** $HOME already exists! ***"
else
    mkdir -v $HOME
fi

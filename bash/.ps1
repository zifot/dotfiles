export PS1='\[\033[01;32m\][$(date +%H:%M:%S)]\e[m ${debian_chroot:+($debian_chroot)}\u@\h:\w$(__git_ps1)\n\$ '

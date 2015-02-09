# Default
alias vi='vim'
alias ll='ls -alf'
alias la='ls -a'
alias ls='ls -CF'


#OSX internal
alias finder='open -a finder'
alias chrome='open -a "/Applications/Google Chrome.app/"'
alias google='open -a "/Applications/Google Chrome.app/"'
alias ff='open -a "/Applications/Firefox.app/"'
alias vlc='open -a "/Applications/VLC.app/"'
alias safari='open -a "/Applications/Safari.app/"'


# SSH 
##infra
alias switch='ssh netmanager@192.168.1.129'
alias umi='ssh -X umi'
#Home
alias centos='ssh -Xp 22 chasiumen@allston.ryosukemorino.com'
alias home='ssh -Xp 1987 chasiumen@ryosukemorino.com'
#Kobe
alias kobe='ssh kobe'
alias nanami='ssh -X nanami'
#VPS
alias ruko='ssh -X ruko.ryosukemorino.com'
alias sakura='ssh -X sakura'
alias conoha='ssh -X conoha.ryosukemorino.com'
alias chobi='ssh chobi.me'


#Sandbox
alias devstack='ssh -X devstack'
alias austin='ssh austin'
alias h1='ssh h1'
alias ex1='ssh ex1'
#alias aws='ssh -i aws_ami.pem ec2-user@ec2-54-201-40-173.us-west-2.compute.amazonaws.com'
alias aws='ssh -X morinor@ec2-54-201-40-173.us-west-2.compute.amazonaws.com'
alias router='ssh -X morinor@router.ryosukemorino.com'
alias wit='ssh -Xp 4444 morinor@chasiumen.net' # W530 3C:97:0E:1B:8A:B6
alias dmz='ssh -Xp 22 chasiumen@192.168.1.128'


# git
alias gstatus='git status'


# puppet
alias pgen='puppet module generate'
alias pparser='puppet parser validate'
alias infoblox='ssh morinor@128.103.200.106'
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

PATH=$PATH:/Users/leox/bin/dotfiles/bin
PATH=$PATH:/Users/leox/bin
PATH=$PATH:/Users/leox/bin/git_tool
export PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH

source ~/.profile

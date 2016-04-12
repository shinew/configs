export PS1='\[$(tput bold)\]\u@\h:\w\\$ \[$(tput sgr0)\]'

export GTEST_DIR="/usr/local/include/googletest"

alias ls='ls -G'
alias grep='egrep --color=auto --exclude=*.{pyc,o,swp} --exclude-dir=.git'
alias fgrep='fgrep --color=auto --exclude=*.{pyc,o,swp} --exclude-dir=.git'
alias egrep='egrep --color=auto --exclude=*.{pyc,o,swp} --exclude-dir=.git'

alias myap="./sample_program < input.txt | tee output.txt"

alias a="cd $HOME/dev/experimental"
alias ml="cd $HOME/dev/ml-library"
alias d='tmux attach -t 0 || tmux'
alias notebook='jupyter notebook'
alias update_all="python $HOME/dev/update-script/updates.py"

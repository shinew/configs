#export PS1='\u@\h:\W\$ '
#export PS1='\[$(tput bold)\]\u@\h:\w\\$ \[$(tput sgr0)\]'
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "

#export PATH=/usr/local/bin/git:/usr/local/mysql/bin:/Users/shine/.cabal/bin:$PATH
#export PYTHONPATH=/Users/shine/dev/LeagueApp:$PYTHONPATH
export GTEST_DIR="/usr/local/include/googletest"

alias ls='ls -G'
alias grep='egrep --color=auto --exclude=*.{pyc,o,swp} --exclude-dir=.git'
alias fgrep='fgrep --color=auto --exclude=*.{pyc,o,swp} --exclude-dir=.git'
alias egrep='egrep --color=auto --exclude=*.{pyc,o,swp} --exclude-dir=.git'

#alias remake='make clean && make'
#alias myap='ipython app.py < input.txt'
alias myap="./sample_program < input.txt | tee output.txt"
#alias mypy='ipython -i app.py'
#alias sshLoo='ssh -X sx5wang@linux.student.cs.uwaterloo.ca'
#alias panPdf='function _panPdf() { rm ${1%.*}.pdf; pandoc $1 --latex-engine=xelatex -o ${1%.*}.pdf; }; _panPdf'

alias a="cd $HOME/dev/experimental"
alias ml="cd $HOME/dev/ml-library"
alias d='tmux attach -t 0 || tmux'
alias notebook='jupyter notebook'
alias update_all="python $HOME/dev/update-script/updates.py"
#alias l='cd ~/dev/LeagueApp/lol'
#alias k='cd ~/dev/kaggle'
#alias notes='cd ~/misc/notes'
#alias journal='cd ~/misc/journal'
#alias writings='cd ~/misc/writings'

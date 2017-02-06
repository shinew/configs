export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias em="emacsclient"

alias update_all="python $HOME/dev/update-script/updates.py"
alias d="cd $HOME/dev"
alias fetch_upstream="git checkout master && git pull && git checkout - && git remote prune origin"
alias b="make build"

# Project specific
alias t="cargo test"
alias a="cd $HOME/Dropbox/School/University/2017/winter"
alias lit="cd $HOME/dev/literallyjavac"
alias big="cd $HOME/dev/bigdata2017w"

function update_resume {
  cp $HOME/Dropbox/Work/Resume/LaTeX/resume.pdf $HOME/Dropbox/Work/Resume/Shine\ Wang\ -\ Resume.pdf
  cp $HOME/Dropbox/Work/Resume/LaTeX/resume.pdf $HOME/dev/shinew.github.io/resume.pdf
  cd $HOME/dev/shinew.github.io
  git add .
  git commit -m 'updated resume'
  git push
}

HISTSIZE=130000 SAVEHIST=130000
setopt PRINT_EXIT_VALUE

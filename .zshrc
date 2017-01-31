# Path to your oh-my-zsh installation.
export ZSH=/Users/shine/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git vi-mode)
plugins=(git)
#. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# User configuration

MY_HADOOP_PATHS="$HOME/dev/lib/hadoop-2.7.2/bin:$HOME/dev/lib/spark-2.0.2-bin-hadoop2.7/bin"
export JAVA_HOME=$(/usr/libexec/java_home)
export SCALA_HOME="$HOME/dev/lib/scala-2.11.8"
export SPARK_LOCAL_IP="127.0.0.1"
export RUST_SRC_PATH="$HOME/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src"

export PATH="/usr/local/opt/coreutils/libexec/gnubin:$SCALA_HOME/bin:$MY_HADOOP_PATHS:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/go/bin:/Library/TeX/texbin:$HOME/.cargo/bin"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
# export PATH="$PATH:$HOME/dev/lib/cling/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# OPAM configuration
. /Users/shine/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
eval `opam config env`

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"

alias a="cd $HOME/Dropbox/School/University/2017/winter"
alias d="cd $HOME/dev"
alias lit="cd $HOME/dev/literallyjavac"
alias big="cd $HOME/dev/bigdata2017w"
alias b="make build"
alias t="cargo test"
alias update_all="python $HOME/dev/update-script/updates.py"
alias fetch_upstream="git checkout master && git pull && git checkout - && git remote prune origin"
function update_resume {
  cp $HOME/Dropbox/Work/Resume/LaTeX/resume.pdf $HOME/Dropbox/Work/Resume/Shine\ Wang\ -\ Resume.pdf
  cp $HOME/Dropbox/Work/Resume/LaTeX/resume.pdf $HOME/dev/shinew.github.io/resume.pdf
  cd $HOME/dev/shinew.github.io
  git add .
  git commit -m 'updated resume'
  git push
}
#alias recompile="jupyter nbconvert --to pdf *.ipynb"

#bindkey "^R" history-incremental-search-backward
HISTSIZE=130000 SAVEHIST=130000
setopt PRINT_EXIT_VALUE
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

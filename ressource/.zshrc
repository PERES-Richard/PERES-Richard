# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/

plugins=(
aws
#colored-man-pages
colorize
command-not-found ## Suggest exe name on fail
docker
docker-compose
encode64 # e64 / d64 for encode / decode
fzf ## Fuzzy autocompletion
#gcloud
git
golang
helm
#history-substring-search
jsontools ## pretty print json pp_json
kubectl
#kubectl-autocomplete
node
npm
#pip
#python
#rsync ## Use rsync-copy / rsync-move
#sudo ## Double ESC to add sudo before the lin
terraform
zsh-autosuggestions
zsh-syntax-highlighting
#zsh-navigation-tools
zsh-completions
zsh-autocomplete
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# User configuration

## Config for zsh-autocomplete
zstyle ':autocomplete:*' fzf-completion yes
zstyle ':autocomplete:*' default-context history-incremental-search-backward
zstyle ':autocomplete:tab:*' widget-style menu-select



## Alias
#alias l="ls --color=auto"
#alias ll="ls -l --color=auto"
#alias lla="ls -la --color=auto"
alias l="lsd --color=auto"
alias ls="lsd -a"
alias ll="lsd -la --blocks=date,size,name --date='+%d %b %y %X'"
alias llt="lsd -la --blocks=date,size,name --date='+%d %b %y %X' --tree --depth"
alias lla="lsd -la --blocks=date,size,user,permission,name --date='+%d %b %y %X'"
alias llat="lsd -la --blocks=date,size,user,permission,name --date='+%d %b %y %X' -tree --depth"
alias tree="lsd --tree --depth"
alias h="n-history"
alias cdd="n-cd"
alias s="sudo su"
alias bb="cd ~"
alias untar="tar -zxvf"
alias c="clear"
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias r="omz reload"
alias m="micro"
alias mz="micro ~/.zshrc && r"
alias ag="apt-get install -y"
alias apd="apt-get update"
alias apg="apt-get upgrade"
alias cat="bat"
alias catp="bat --paging=never"
alias catpp="bat --paging=never -p"


## Docker
alias d="docker"
alias dc="docker-compose"
alias dr="docker run"
alias drm="docker rm -f"
alias dk="docker kill"
alias ds="docker start"
alias de="docker exec"
alias da="docker attach"
alias dps="docker ps"
##

## Kubernetes
alias k="kubectl"
alias kg="kubectl get"
alias ns="kubens"
alias ctx="kubectx"
alias kcns="kubectl create namespace"
alias kaff="cat << EOF | kaf -"
alias kdelf="kubectl delete --force"
alias kk="kubectl kustomize"
alias kak="kubectl apply -k"
alias ns="kubens"
alias ctx="kubectx"
export KUBE_EDITOR="micro"
##

## Helm
alias he="helm"
alias hei="helm install"
alias hed="helm delete"
alias heu="helm repo update"
alias hel="helm list"
##

## Git
alias pcr='pre-commit run -a'
##

#┬áGCloud
alias gcp="gcloud"
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# ArgoCD CLI auto complete
source /etc/bash_completion.d/argocd

# Azure CLI auto complete
source /etc/bash_completion.d/azure-cli


## Go
export PATH=$PATH:/usr/local/go/bin
export PATH="/root/.local/bin:$PATH"
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
##

# Hot reload JS
export CHOKIDAR_USEPOLLING=true

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Java
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
export PATH=$JAVA_HOME/bin:$PATH

## Android studio
export ANDROID_HOME=$RIRI/AppData/Local/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
##

my-ip() {
	IP=$(curl -s ifconfig.me)
	echo $IP
	echo $IP | xclip
}


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## Bash CheatSheet
# https://devhints.io/bash 

### Install ###

## Get micro editor
# curl https://getmic.ro | bash
# sudo mv micro /usr/bin/

## Setup Zsh & p10k
# https://dev.to/abdfnx/oh-my-zsh-powerlevel10k-cool-terminal-1no0
# sudo apt-get install zsh -y
# zsh
# sudo su -
# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
# wget https://richard-peres.com/ressource/.p10k.zsh
# chmod 755 .p10k.zsh
# omz reload

# Get zsh auto suggestion, completions, live history & syntax higlting pluggins
# `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
# `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
# `git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions`
# `git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-autocomplete`

## Setup zsh-autocomplete (https://github.com/marlonrichert/zsh-autocomplete)
# echo "skip_global_compinit=1" > .zshenv

## Install lsd instead of ls
# wget https://github.com/Peltoche/lsd/releases/download/1.0.0/lsd_1.0.0_amd64.deb
# dpkg -i lsd_1.0.0_amd64.deb

## Install batcat instead of cat (https://github.com/sharkdp/bat)
# wget "https://github.com/sharkdp/bat/releases/download/v0.23.0/bat-musl_0.23.0_amd64.deb"
# sudo dpkg -i bat-musl_0.23.0_amd64.deb

## Add Azure CLI completion
# wget https://raw.githubusercontent.com/Azure/azure-cli/dev/az.completion -O /etc/bash_completion.d/azure-cli

## Enable xclip from windows system32
# ln -s /mnt/c/Windows/System32/clip.exe /usr/bin/xclip

## Add idea
# ln -s /mnt/c/Program\ Files/JetBrains/IntelliJ\ IDEA\ 202**/bin/idea64.exe /usr/bin/idea

## Install kubectx & kubens
# sudo apt-get install fzf -y
# sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
# sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
# sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
# mkdir -p ~/.oh-my-zsh/completions
# chmod -R 755 ~/.oh-my-zsh/completions
# ln -s /opt/kubectx/completion/_kubectx.zsh ~/.oh-my-zsh/completions/_kubectx.zsh
# ln -s /opt/kubectx/completion/_kubens.zsh ~/.oh-my-zsh/completions/_kubens.zsh

### Install end ###

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/.zshrc-alpian

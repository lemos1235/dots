# GPG
export GPG_TTY=$TTY

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/Users/lg/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="lambda"
# ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="cypher"

if [[ -n "$CURSOR_AGENT" ]]; then
  ZSH_THEME=""              # Cursor 内禁用主题
  PROMPT='%n@%m:%~%# '      # 改用简单 prompt
  RPROMPT=''                # 右侧 prompt 清空
else
  # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
  # Initialization code that may require console input (password prompts, [y/n]
  # confirmations, etc.) must go above this block; everything else may go below.
  if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  fi
  ZSH_THEME="powerlevel10k/powerlevel10k"
  [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
fi

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
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vim=nvim
alias doom="hp doom"
# alias brew="hp brew -v"
alias dus="du -h -d 1 . | sort -h -r | head -n 10"
alias proxy="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890"
# alias ec="emacsclient -ncq"
# alias ec=emacs
alias mcurl="curl -w \"@$HOME/.curl-format.txt\""

if type brew &>/dev/null; then
FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

autoload -Uz compinit
compinit
fi

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="$HOME/.local/bin:$PATH"

# llvm
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
#export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
### End of Zinit's installer chunk
# 中国科学技术大学
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
export RUST_SRC_PATH=$(rustc --print sysroot)/lib/rustlib/src/rust/library
# nodejs
export NODE_VER=22
export PATH="/opt/homebrew/opt/node@$NODE_VER/bin:$PATH"
export ELECTRON_MIRROR="https://npmmirror.com/mirrors/electron/"
# export NODE_OPTIONS=--openssl-legacy-provider
# export LDFLAGS="-L/opt/homebrew/opt/node@$NODE_VER/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/node@$NODE_VER/include"
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
export JAVA_HOME="$(/usr/libexec/java_home -v 1.17)"
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:~/.emacs.d/bin
# flutter
export FLUTTER_STORAGE_BASE_URL="https://storage.flutter-io.cn"
export PUB_HOSTED_URL="https://pub.flutter-io.cn"
#export FLUTTER_ROOT=$HOME/Library/flutter/stable/flutter
export FLUTTER_ROOT=$HOME/Library/flutter/3.10.6/flutter
export PATH="$PATH:$FLUTTER_ROOT/bin"
# fastlane
export APPSTORE_KEY_ID=CTAH3VGC23
export APPSTORE_ISSUER_ID=be42a511-bdb5-4483-9f73-1f481d864f15
export MATCH_PASSWORD=$(cat $HOME/private_keys/fastlane_match_password.txt)
export APPSTORE_KEY_CONTENT=$(base64 -i $HOME/private_keys/AuthKey_CTAH3VGC23.p8)
# dart pub
export PATH="$PATH:$HOME/.pub-cache/bin"
# golang
export GOROOT="/opt/homebrew/opt/go@1.24/libexec"
export PATH="$GOROOT/bin:$PATH"
export GOPATH="/Users/lg/go"
export PATH="$GOPATH/bin:$PATH"
# android
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export NDK_HOME=$ANDROID_HOME/ndk-bundle
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin"
# apps
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
# ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"
# antigravity
export PATH="/Users/lg/.antigravity/antigravity/bin:$PATH"
# opencode
export PATH=/Users/lg/.opencode/bin:$PATH

# OPENSPEC:START
# OpenSpec shell completions configuration
fpath=("/Users/lg/.oh-my-zsh/custom/completions" $fpath)
autoload -Uz compinit
compinit
# OPENSPEC:END

# Enable Powerlevel9k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

###### ------------ Powerlevel10k - Start ------------#####
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
###### ------------ Powerlevel10k - End ------------#####

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools/adb
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="$HOME/.local/bin:$PATH"
export CHROME_EXECUTABLE="/usr/bin/chromium"
export PATH="$HOME/miniconda3/bin:$PATH"
export PATH="$HOME/flutter/bin:$PATH"
export BROWSER='/usr/bin/chromium'
export ZSH="$HOME/.oh-my-zsh"
export CC=clang
export CXX=clang++
export CLANG_BASE="--build-base build_clang --install-base install_clang"
export BUILD_ARGS="--symlink-install ${CLANG_BASE} --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS=ON"
export EDITOR=nvim
alias cb="colcon build ${BUILD_ARGS}"

# bind ctrl-l to clear command
function clear-screen-and-scrollback() {
  builtin echoti civis >"$TTY"
  builtin print -rn -- $'\e[H\e[2J' >"$TTY"
  builtin zle .reset-prompt
  builtin zle -R
  builtin print -rn -- $'\e[3J' >"$TTY"
  builtin echoti cnorm >"$TTY"
}
zle -N clear-screen-and-scrollback
bindkey '^L' clear-screen-and-scrollback

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
export LAMBDA_MOD_N_DIR_LEVELS=3
# eval "$(dircolors -b ~/.dircolors)"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
plugins=( 
    # other plugins...
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#alias vim="nvim"
alias nvc="nvim ./.config/nvim"
# alias ains="sudo apt install"
alias vd="nvim ."
alias v="nvim"
alias c="clear"
alias o="cd ~/ObsidianVault/Nick;nvim ."
#alias o="nvim ~/Obsidian\ Vault/Nick/Home.md"
alias rc="nvim ~/.zshrc"
alias nvc="nvim ~/.config/nvim"
alias wmc="nvim ~/.config/i3/config"
alias asdf="xmodmap ~/.xmodmap"
#alias ewc="nvim ~/.config/eww"
alias pman="sudo pacman -S"
alias lg="lazygit"
alias k="kubectl"
alias kns="k9s"
alias tmux-sessionizer="sh /home/nickArch/.local/bin/tmux-sessionizer.sh"
alias ts="sh /home/nickArch/.local/bin/tmux-sessionizer.sh"

#export PATH="/usr/node-v20.9.0-linux-x64/bin/:$PATH"
#export PATH="/usr/node-v20.9.0-linux-x64/lib/node_modules/npm/bin/:$PATH"
#export PATH="$HOME/eww/target/release:$PATH"

#eval "$(lua /usr/share/z.lua/z.lua  --init zsh enhanced once fzf)"

# vi mode
bindkey -v
export KEYTIMEOUT=1

fh-widget() {
  local cmd
  cmd=$(fc -l 1 | sed 's/^[ ]*[0-9]\+[ ]*\**[ ]*//' | awk '!seen[$0]++' | \
        fzf --tac --exact --no-sort --height=9 --reverse --border --prompt="History > ")
  if [[ -n "$cmd" ]]; then
    LBUFFER="$cmd"
  fi
  zle reset-prompt
}
zle -N fh-widget
# bindkey '^R' fh-widget
bindkey '^r' history-incremental-search-backward


add-compile-commands() {
    dest_dir=$(find src -wholename "${1}" -type d -print -quit | awk -F/ '{printf "%s", $NF}')
    if [ -z ${dest_dir} ]; then
        echo "Failed to find destination directory"
        return 1
    fi 
    ln -s ${PWD}/build_clang/$dest_dir/compile_commands.json src/${dest_dir}/compile_commands.json
}
alias add_compile_commands="add-compile-commands"

# include following in .bashrc / .bash_profile / .zshrc
# usage
# $ mkvenv myvirtualenv # creates venv under ~/.virtualenvs/
# $ venv myvirtualenv   # activates venv
# $ deactivate          # deactivates venv
# $ rmvenv myvirtualenv # removes venv

export VENV_HOME="$HOME/.virtualenvs"
[[ -d $VENV_HOME ]] || mkdir $VENV_HOME

lsvenv() {
  ls -1 $VENV_HOME
}

venv() {
  if [ $# -eq 0 ]
    then
      echo "Please provide venv name"
    else
      source "$VENV_HOME/$1/bin/activate"
  fi
}

mkvenv() {
  if [ $# -eq 0 ]
    then
      echo "Please provide venv name"
    else
      python3 -m venv $VENV_HOME/$1
  fi
}

rmvenv() {
  if [ $# -eq 0 ]
    then
      echo "Please provide venv name"
    else
      rm -r $VENV_HOME/$1
  fi
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/nickArch/miniforge3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/nickArch/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/home/nickArch/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/home/nickArch/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup



# Load Angular CLI autocompletion.
source <(ng completion script)

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'micromamba shell init' !!
export MAMBA_EXE='/home/nickArch/.local/bin/micromamba';
export MAMBA_ROOT_PREFIX='/home/nickArch/micromamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    # alias micromamba="$MAMBA_EXE"  # Fallback on help from micromamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

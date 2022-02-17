[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

POWERLEVEL9K_MODE="nerdfont-fontconfig"

POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_BACKGROUND="white"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_FOREGROUND="black"

zsh_wifi_signal(){
        local output=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I)
        local airport=$(echo $output | grep 'AirPort' | awk -F': ' '{print $2}')

        if [ "$airport" = "Off" ]; then
                local color='%F{black}'
                echo -n "%{$color%}Wifi Off"
        else
                local ssid=$(echo $output | grep ' SSID' | awk -F': ' '{print $2}')
                local speed=$(echo $output | grep 'lastTxRate' | awk -F': ' '{print $2}')
                local color='%F{black}'

                [[ $speed -gt 100 ]] && color='%F{black}'
                [[ $speed -lt 50 ]] && color='%F{red}'

                echo -n "%{$color%}$speed Mbps \uf1eb%{%f%}" # removed char not in my PowerLine font
        fi
}

POWERLEVEL9K_CONTEXT_TEMPLATE='%n'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{cyan}\uF460%F{073}\uF460%F{109}\uF460%f "
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_ICON='?'
POWERLEVEL9K_DISABLE_RPROMPT=true


POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time dir_writable ip custom_wifi_signal ram load background_jobs)

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1

POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M \uf073 %m/%d/%y}"
POWERLEVEL9K_TIME_BACKGROUND='white'
POWERLEVEL9K_RAM_BACKGROUND='yellow'
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="white"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="white"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="white"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="red"
POWERLEVEL9K_LOAD_WARNING_FOREGROUND="yellow"
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="black"
POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_CROSS=true

# nvm setting if downloaded using curl
#export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# nvm setting if installed through brew
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

alias look="sudo find . -name"
alias cls="clear"
alias search="sudo grep --color -rnw ./ -e "

eval $(thefuck --alias)

export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

setopt histignorespace

# Setting for the new UTF-8 terminal support in Lion
LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

alias gclb='git branch --merged | egrep -v "(^\*|main|master|dev)" | xargs git branch -d'

# Android Path Settings
# export ANDROID_HOME=$HOME/Library/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/emulator
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# Ruby / Java Settings
# export LDFLAGS="-L/usr/local/opt/ruby/lib"
# export CPPFLAGS="-I/usr/local/opt/ruby/include -I/usr/local/opt/openjdk/include -I/usr/local/opt/openjdk@8/include"

alias gclm='git fetch -p && git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d'
alias gclf='git branch -D $(git branch --list | grep feature)'

alias yb="yarn && yarn build"

# n2c setting
# source < (kubectl completion zsh)

# airflow setting
# export AIRFLOW_HOME=~/airflow


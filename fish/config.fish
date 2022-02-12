#set -U fish_greeting

#terminal aliases
alias tb='taskbook'
alias open='xdg-open'
alias brilliant_schedule='open ~/Documents/Brilliant/time_tables/brilliant_schedule.pdf'
alias chavara_schedule='open ~/Documents/Brilliant/time_tables/chavara_live_schedule.pdf'
alias python='python3.8'
alias sci_fi='~/.eDEX-UI-Linux-x86_64.AppImage'
alias nodock='gnome-extensions disable ubuntu-dock@ubuntu.com'
alias dock='gnome-extensions enable ubuntu-dock@ubuntu.com'
alias clock='watch -n1 "date |figlet"'
alias sysinfo='neofetch --cpu_temp C --color_blocks off'
alias ..='cd ..'
alias top='btop'
alias qtile_restart='qtile cmd-obj -o cmd -f restart'
alias notebook='~/Downloads/Write/Write'
alias la='exa -al'
#alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
#function rm
#	command rm -i $args
#end
#function mv
#	command mv -i $args
#end

#commands
#Shows the initial ascii roshan text.
if status --is-interactive
	figlet Roshan|lolcat
end
#Includes the !! from bash.
source ~/.config/fish/functions/previous-command-expansion

#Defines the timer function 
#Usage: timer [time] [text]
function timer
	sleep $argv[1] && echo -e '\a' && zenity --info --text "$argv[2..-1]"
end
#changes ls to exa
function ls
    command exa $argv
end

zoxide init fish | source

#set PATH
#set -e PATH[1]
#set -g PATH $PATH $HOME/.cargo/bin $HOME/.myscripts

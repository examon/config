[ -z "$PS1" ] && return

export TERM=xterm-color
export LANG=en_US.UTF-8
export LC_MESSAGES="C"
export LC_ALL=en_US.UTF-8
export EDITOR="vim"
export FCEDIT="vim"
export BROWSER=/usr/bin/firefox
export HISTFILESIZE="100000"
export HISTCONTROL="ignoreboth"
export GREP_COLOR="1;31"
export MAIL="$HOME/Mail"
#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
#export _JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
#export JAVA_HOME=/usr/bin/java
export JAVA_FONTS=/usr/share/fonts/TTF
#export _JAVA_OPTIONS="-Dswing.aatext=true -Dawt.useSystemAAFontSettings=on"
export _JAVA_OPTIONS="-Dswing.aatext=true -Dawt.useSystemAAFontSettings=on -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
export LIBVIRTD_PATH="/sbin/libvirtd"

set show-all-if-ambiguous on
set bell-style visible

alias x="startx"
alias bb="sudo bleachbit --delete system.cache system.localizations system.trash system.tmp"
alias suspend="sudo pm-suspend"
alias r="./"
alias lo="libreoffice"
alias ur="urxvt"
alias m="mplayer"
alias mascii="mplayer -vo caca"
alias mc="mc -b"
alias e="setsid evince"
alias z="setsid zathura"
alias steps="$HOME/Github/stepc/stepc.py"
alias ll="ls -l --group-directories-first"
alias ls="ls -hF --color"   # add colors for filetype recognition
alias la="ls -a"            # show hidden files
alias lx="ls -xb"           # sort by extension
alias lk="ls -lSr"          # sort by size, biggest last
alias lc="ls -ltcr"         # sort by and show change time, most recent last
alias lu="ls -ltur"         # sort by and show access time, most recent last
alias lt="ls -ltr"          # sort by date, most recent last
alias lm="ls -al |more"     # pipe through 'more'
alias lr="ls -lR"           # recursive ls
alias lsr="tree -Csu"       # nice alternative to 'recursive ls'
alias rm="echo Use trash from trash-cli package"
alias sc="cd $HOME/Scripts"
alias dw="cd $HOME/Downloads"
alias edu="cd $HOME/Education"
alias doc="cd $HOME/Documents"
alias media="cd $HOME/Media"
alias p2="python2"
alias dt="cd ~/Dropbox/"
alias rbt="sudo reboot"
alias checkfs="$HOME/Scripts/fsck_check/fsck_check"
alias weather="$HOME/exo/Github/mwf/mwf.sh"
alias sz="du -sh */"
alias h="cd ~"
alias home="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias utfg="$HOME/S:ftware/utfgpls/utfgpls.sh"
alias bstart="$HOME/Github/scripts/tp_charge_scripts/bstart"
alias bstop="$HOME/Github/scripts/tp_charge_scripts/bstop"
alias linuxdiff="diff -Naur"
alias sxiv="sxiv -s -t"
alias physlock="sudo $HOME/Software/physlock/physlock -u exo"
alias ttydigital="tty-clock -s -c -C 4"
alias ttyanalog="clockywock"
alias spellsk="aspell -l sk -c"
alias spellen="aspell -l en -c"
alias tetris="vitetris"
alias youtubeviewer="$HOME/Scripts/youtube-viewer/youtube-viewer"
alias bindump="xxd -b"
alias cs106="$HOME/Education/stanford/programming_abstractions_CS106B/compile.c"
alias gcs="$HOME/Education/stanford/programming_abstractions_CS106B/cs106lib/gserv/gserv"
alias leak="valgrind --leak-check=full"
alias lovearchive="zip -r ../${PWD##*/}.love *"
alias gh="cd $HOME/Github"
alias cflow="$HOME/Software/cflow/cflow"
alias screenoff="sudo vbetool dpms off"
alias screenon="sudo vbetool dpms on"
alias tofu="$HOME/Software/tofu/tofu-3.5/tofu"
alias run_test="$HOME/Github/splitwm/test/run_test.py"
alias wing_ide="$HOME/Software/wingide-4.1.10-1-i386-linux/wing"
alias venv="source $HOME/venv/bin/activate"
alias ctags_init_dir="ctags -f tags -h \".c\" -R --totals=yes --tag-relative=yes *"
alias ctags_prototypes="ctags -x --c-kinds=fp *h"
alias ctags_ycm="ctags -f tags -R --totals=yes --tag-relative=yes --fields=+l" #ctags for youcompleteme vim plugin
alias sublime="setsid $HOME/Software/sublime_text_2/sublime_text"
alias systemd_multi_user="sudo ln -sf /lib/systemd/system/multi-user.target /etc/systemd/system/default.target"
alias systemd_graphical="sudo ln -sf /lib/systemd/system/graphical.target /etc/systemd/system/default.target"
alias swap_ctrl_caps="setxkbmap -option ctrl:nocaps"
alias xwrits25_5="xwrits typetime=25 breaktime=3 -mouse"
alias monitors="/home/tmeszaro/.screenlayout/layout.sh"
alias mutt="$HOME/Software/mutt-1.5.23/mutt"
alias garmin="python2 $HOME/Github/Garmin-Forerunner-610-Extractor/garmin.py"
alias idea="$HOME/Software/idea/idea-IC-135.1230/bin/idea.sh"
alias pycharm="$HOME/Software/pycharm-community-3.4.1/bin/pycharm.sh"
alias cling="$HOME/Software/cling-Fedora20-x86_64-b714047cbb/bin/cling"
alias c++="clang++ -std=c++11 -O0 -g -Wall -Wextra -pedantic"

#=------=#
# Prompt #
#=------=#

# Bash colour definitions
# see http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html
BLACK='\[\e[0;30m\]';       DARK_GRAY='\[\e[1;30m\]'
BLUE='\[\e[0;34m\]';        LIGHT_BLUE='\[\e[1;34m\]'
GREEN='\[\e[0;32m\]';       LIGHT_GREEN='\[\e[1;32m\]'
CYAN='\[\e[0;36m\]';        LIGHT_CYAN='\[\e[1;36m\]'
RED='\[\e[0;31m\]';         LIGHT_RED='\[\e[1;31m\]'
PURPLE='\[\e[0;35m\]';      LIGHT_PURPLE='\[\e[1;35m\]'
BROWN='\[\e[0;33m\]';       YELLOW='\[\e[1;33m\]'
LIGHT_GRAY='\[\e[0;37m\]';  WHITE='\[\e[1;37m\]'
RESET_COLOR='\[\e[00m\]'

unset EXIT_CODES
# Exit codes definitions, see bash(1),
EXIT_CODES[1]='Catchall for general errors / Operation not permitted'
EXIT_CODES[2]='Misuse of shell builtins / No such file or directory'
EXIT_CODES[126]='A command is found but is not executable'
EXIT_CODES[127]='A command is not found'
EXIT_CODES[128]='Invalid argument to exit'
EXIT_CODES[255]='Exit status out of range / SSH error occurred'
# Signals, see signal(7)
EXIT_CODES[129]='SIGHUP,1,Term Hangup detected on controlling terminal or '\
'death of controlling process'
EXIT_CODES[130]='SIGINT,2,Term Interrupt from keyboard (Ctrl-C)'
EXIT_CODES[131]='SIGQUIT,3,Core Quit from keyboard (Ctrl-\)'
EXIT_CODES[132]='SIGILL,4,Core Illegal Instruction'
EXIT_CODES[133]='SIGTRAP,5,Core Trace/breakpoint trap'
EXIT_CODES[134]='SIGABRT,6,Core Abort signal from abort(3) / SIGIOT,6,Core '\
'IOT trap'
EXIT_CODES[135]='SIGBUS,7,Core Bus error (bad memory access)'
EXIT_CODES[136]='SIGFPE,8,Core Floating point exception'
EXIT_CODES[137]='SIGKILL,9,Term Kill signal'
EXIT_CODES[138]='SIGUSR1,10,Term User-defined signal 1'
EXIT_CODES[139]='SIGSEGV,11,Core Invalid memory reference'
EXIT_CODES[140]='SIGUSR2,12,Term User-defined signal 2'
EXIT_CODES[141]='SIGPIPE,13,Term Broken pipe: write to pipe with no readers'
EXIT_CODES[142]='SIGALRM,14,Term Timer signal from alarm(2)'
EXIT_CODES[143]='SIGTERM,15,Term Termination signal'
EXIT_CODES[144]='SIGSTKFLT,16,Term Stack fault on coprocessor (unused)'
EXIT_CODES[145]='SIGCHLD,17,Ign Child stopped or terminated / SIGCLD,17,Ign'
EXIT_CODES[146]='SIGCONT,18,Cont Continue if stopped'
EXIT_CODES[147]='SIGSTOP,19,Stop Stop process'
EXIT_CODES[148]='SIGTSTP,20,Stop Stop typed at terminal'
EXIT_CODES[149]='SIGTTIN,21,Stop Terminal input for background process'
EXIT_CODES[150]='SIGTTOU,22,Stop Terminal output for background process'
EXIT_CODES[151]='SIGURG,23,Ign Urgent condition on socket (4.2BSD)'
EXIT_CODES[152]='SIGXCPU,24,Core CPU time limit exceeded (4.2BSD)'
EXIT_CODES[153]='SIGXFSZ,25,Core File size limit exceeded (4.2BSD)'
EXIT_CODES[154]='SIGVTALRM,26,Term Virtual alarm clock (4.2BSD)'
EXIT_CODES[155]='SIGPROF,27,Term Profiling timer expired'
EXIT_CODES[156]='SIGWINCH,28,Ign Window resize signal (4.3BSD, Sun)'
EXIT_CODES[157]='SIGPOLL,29,Term Pollable event (Sys V) / SIGIO,29,Term I/O '\
'now possible (4.2BSD)'
EXIT_CODES[158]='SIGPWR,30,Term Power failure (System V) / SIGINFO,30,Term'
EXIT_CODES[159]='SIGSYS,31,Core Bad argument to routine (SVr4) / SIGUNUSED,'\
'31,Core'

function parse_exit_code() {
    local temp_ecode=( $1 )
    local final_ecode=

    if [ ${temp_ecode} != ${temp_ecode[@]:(-1)} ]; then
        final_ecode=${temp_ecode}
    else
        final_ecode=${temp_ecode[@]:1}
    fi

    for i in ${final_ecode[@]}; do
        if [ ${i} != "0" ] ; then
            echo -e "\e[1;31m[${i}] ${EXIT_CODES[$i]} "
        fi
    done
    return ${i}
}

function pek() {
    parse_exit_code "${?} ${PIPESTATUS[@]}"
}

function get_ecode() {
    local temp_ecode=( $1 )
    local final_ecode=

    if [ ${temp_ecode} != ${temp_ecode[@]:(-1)} ]; then
        final_ecode=${temp_ecode}
    else
        final_ecode=${temp_ecode[@]:(-1)}
    fi

    return ${final_ecode}
}

parse_git () {
    local branchname=
    local gitstatus=
    local workt=
    local stage=
    local ahead=
    local behind=
    branchname=$(git branch 2>/dev/null | grep '\*')
    if [[ -n ${branchname} ]]; then
        PS1+=" (${LIGHT_BLUE}${branchname:2}${RESET_COLOR}"
        gitstatus=$(git status --porcelain 2> /dev/null)

        if [[ -n "${gitstatus}" ]] ; then
            workt=$(echo -e "${gitstatus}" | cut -c2 | sort | uniq | \
                tr -d '\n ')
            stage=$(echo -e "${gitstatus}" | cut -c1 | sort | uniq | \
                grep -v -e '\?' -e '\!' | tr -d '\n ')
        fi

        if [[ -n ${stage} || -n ${workt} ]]; then
            PS1+=" ${YELLOW}${stage}${LIGHT_RED}${workt}"
        fi

        ahead=$(git rev-list --count @{upstream}..HEAD 2>/dev/null)
        behind=$(git rev-list --count HEAD..@{upstream} 2>/dev/null)

        if [[ ${?} == 0 && -n ${ahead} ]]; then
            if [ ${ahead} -ne 0 ]; then
                PS1+=" ${YELLOW}+${ahead}"
            fi

            if [ ${behind} -ne 0 ]; then
                PS1+=" ${YELLOW}-${behind}"
            fi
        fi
        PS1+="${RESET_COLOR})"
    fi
}

where_i_am ()
{
    PS1+=$(ifconfig | grep -e 'inet.*broadcast' | awk '{print $2}' | \
        tr '\n' '/' | sed s'/.$//')
}

my_hostname () {
    PS1+=$(hostname)
}


generate_ps () {
    local ecode="${?} ${PIPESTATUS[@]}"
    local ret

    PS1=
    #parse_exit_code "${ecode}"   # Don't want to show error msg, just code
    get_ecode "${ecode}"
    ret=$?

    PS1+="${LIGHT_PURPLE}\u@\H ${RESET_COLOR}"
    PS1+="${LIGHT_BLUE}\w${RESET_COLOR}"
    parse_git

    if [ ${ret} -ne 0 ]; then
        PS1+=" ${LIGHT_RED}${ret} $ ${RESET_COLOR}"
    else
        PS1+=" ${LIGHT_GREEN}$ ${RESET_COLOR}"
    fi
}

PROMPT_COMMAND=generate_ps


#=---------=#
# functions #
#=---------=#

function clang-google-format() {
    clang-format -i -style="Google" $1
}

function clang-analyze() {
    clang++ --analyze -Xanalyzer -analyzer-output=text $1
}

function external_open() {
    su -c "cryptsetup luksOpen $1 WD1TB && mount /dev/mapper/WD1TB /mnt/WD1TB/"
}

function external_close() {
    su -c "sudo umount /mnt/WD1TB && cryptsetup luksClose /dev/mapper/WD1TB/"
}

function external_full_system_backup() {
    if [ $# -lt 1 ]; then 
        echo "No destination defined. Usage: $0 destination" >&2
        exit 1
    elif [ $# -gt 1 ]; then
        echo "Too many arguments. Usage: $0 destination" >&2
        exit 1
    elif [ ! -d "$1" ]; then
       echo "Invalid path: $1" >&2
       exit 1
    elif [ ! -w "$1" ]; then
       echo "Directory not writable: $1" >&2
       exit 1
    fi

    case "$1" in
      "/mnt") ;;
      "/mnt/"*) ;;
      "/media") ;;
      "/media/"*) ;;
      "/run/media") ;;
      "/run/media/"*) ;;
      *) echo "Destination not allowed." >&2 
         exit 1 
         ;;
    esac

    START=$(date +%s)
    su -c "rsync -aAXv /* $1 --exclude={/dev/*,/proc/*,/sys/*,/tmp/*,/run/*,/mnt/*,/media/*,/lost+found,/var/lib/pacman/sync/*}"
    FINISH=$(date +%s)
    echo "total time: $(( ($FINISH-$START) / 60 )) minutes, $(( ($FINISH-$START) % 60 )) seconds" | tee $1/"Backup from $(date '+%Y-%m-%d, %T, %A')"
}

function aisa_upload()
{
    scp -r $1 xmeszar@aisa.fi.muni.cz:/home/xmeszar/backup
}

function aisa_download()
{
    scp -r xmeszar@aisa.fi.muni.cz:$1 $2
}

function grepdir()
{
    local keyword="$1"
    local dir="$2"
    grep -inIER -B 4 -A 1 --color=ALWAYS "${keyword}" "${dir}"
}

function cd()
{
     builtin cd "$*" && ls
}

# Google search bash function
google() {
    search=""
    for term in $*; do
        search="$search%20$term"
    done
    xdg-open "http://www.google.co.uk/search?q=$search"
}

# Google images search bash function
images() {
    search=""
    for term in $*; do
        search="$search%20$term"
    done
    xdg-open "http://www.google.co.uk/search?tbm=isch&hl=en&source=hp&biw=1366&bih=679&q=$search"
}

# YouTube search bash function
videos() {
    search=""
    for term in $*; do
        search="$search%20$term"
    done
    xdg-open "http://www.youtube.com/results?search_query=$search"
}

# Google books search bash function
book() {
    search=""
    for term in $*; do
        search="$search%20$term"
    done
    xdg-open "http://www.google.co.uk/search?q=$search&btnG=Search+Books&tbm=bks&tbo=1"
}

# DuckDuckGo search bash function
ddg() {
    search=""
    for term in $*; do
        search="$search%20$term"
    done
    xdg-open "http://duckduckgo.com/?q=$search"
}

# Wikipedia English search bash function
wiki() {
    search=""
    for term in $*; do
        search="$search%20$term"
    done
    xdg-open "http://en.wikipedia.org/w/index.php?search=$search"
}

# Translate English -> Slovak
en-sk() {
    search=""
    for term in $*; do
        search="$search%20$term"
    done
    xdg-open "http://translate.google.sk/#en|sk|$search"
}

# Translate Slovak -> English
sk-en() {
    search=""
    for term in $*; do
        search="$search%20$term"
    done
    xdg-open "http://translate.google.sk/#sk|en|$search"
}

# Extract function
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1 ;;
      *.tar.gz)    tar xzf $1 ;;
      *.tar.xz)    tar -Jxf $1 ;;
      *.bz2)       bunzip2 $1 ;;
      *.rar)       rar x $1 ;;
      *.gz)        gunzip $1 ;;
      *.tar)       tar xf $1 ;;
      *.tbz2)      tar xjf $1 ;;
      *.tgz)       tar xzf $1 ;;
      *.zip)       unzip $1 ;;
      *.Z)         uncompress $1 ;;
      *.7z)        7z x $1 ;;
      *.rpm)       rpm2cpio $1 | cpio -idmv ;;
      *)           echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Copy config files from $CONFIG to $REMOTE's root home dir
# ---
# Usage: send_config_to hostname
# Config: place files/dirs you want to copy into CONFIG variable

function send_config_to() {
    local CONFIG="$HOME/.vimrc $HOME/.vim $HOME/.bashrc"
    local REMOTE=$1

    if [ $# -ne 1 ]; then
        echo "Usage: send_config_to hostname"
        exit 1
    fi

    scp -r ${CONFIG} root@${REMOTE}:/root
}

function dotfiles() {
    $HOME/Github/dotfiles/dotfiles.sh "$@"
}

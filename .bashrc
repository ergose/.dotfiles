#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Login, executar Xorg ao fazer login no TTY1
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx


# TWEAK - MOSTRAR NOME DO PROGRAMA NA JANELA DE TITULO
case "$TERM" in
xterm*|rxvt*|screen*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'

    show_command_in_title_bar()
    {
        case "$BASH_COMMAND" in
            *\033]0*)
                ;;
            *)
                echo -ne "\033]0;${BASH_COMMAND}\007"
                ;;
        esac
    }
    trap show_command_in_title_bar DEBUG
    ;;
*)
    ;;
esac

##FUNCTIONS
function cl
{
	builtin cd "$@" && ls -lhF --color=auto
}


PS1='[\u@\h \W]\$ '

export BROWSER=firefox

###ALIAS
alias simplerss='python /home/quark/Documents/GitDevelopment/simpleRSS/main.py'
alias doom1="prboom -width 1600 -height 870 -iwad ~/.doom/Doom1.WAD"
alias ls='ls --color=auto -F -lh'
alias screenfetch='screenfetch -c 3,15'
alias ix="curl -F 'f:1=<-' ix.io"
alias ixg=".scripts/termbinget.sh"
alias rms='shred -n 100 -u -v -z'
alias player='mpd; ncmpcpp'
alias sftp_vmlampp='sshfs vmuser@192.168.73.131:/var/www /home/quark/mnt/vm_lampp'
alias ftp_strangequark='curlftpfs ftp.strangequark.tk /home/quark/mnt/strangequark -o user=u437760725:z3xoqbd4' 
alias cups_start='sudo systemctl start org.cups.cupsd.service'
alias cups_stop='sudo systemctl stop org.cups.cupsd.service'
alias vime='vim -u .vimencryptrc -x'
alias extract='dtrx'

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

    # Show the currently running command in the terminal title:
    # http://www.davidpashley.com/articles/xterm-titles-with-bash.html
    show_command_in_title_bar()
    {
        case "$BASH_COMMAND" in
            *\033]0*)
                # The command is trying to set the title bar as well;
                # this is most likely the execution of $PROMPT_COMMAND.
                # In any case nested escapes confuse the terminal, so don't
                # output them.
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


###ALIAS
alias simplerss='python /home/bruno/Documents/GitDevelopment/simpleRSS/main.py'
alias doom1="prboom -width 1600 -height 870 -iwad ~/.doom/Doom1.WAD"
alias ls='ls --color=auto -F -lh'
PS1='[\u@\h \W]\$ '
alias screenfetch='screenfetch -c 3,15'
alias ix="curl -F 'f:1=<-' ix.io"
alias ixg=".scripts/termbinget.sh"
alias rms='shred -n 100 -u -v -z'
#alias player='mpd; ncmpcpp'
alias fixtime="sudo ntpd -qg"
alias rasp_ssh_local='ssh bruno@192.168.2.116'
alias rasp_ssh_net='ssh bruno@ladex.ddns.net'
alias rasp_sftp_local='sshfs bruno@192.168.2.116:/var/www /home/bruno/Documents/raspberry'
alias rasp_sftp_net='sshfs bruno@ladex.ddns.net:/var/www /home/bruno/Documents/raspberry'
alias cups_start='sudo systemctl start org.cups.cupsd.service'
alias cups_stop='sudo systemctl stop org.cups.cupsd.service'
alias vime='vim -u .vimencryptrc -x'
alias extract='dtrx'

# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=


# ------- startup initializations --------
#module load mpi/openmpi-x86_64
#module load mpi/mpich-x86_64 
shopt -s extglob 		# allow rm -rf -- !(file)  # remove everything except file

# switch to perl-5.10.0 for cmgui3.0.0

#result=$(perlbrew switch)
#if [ "$result" == "Currently switched off" ]; then
#DIR=$(pwd)
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/perl5/perlbrew/build/perl-5.10.0
#perlbrew switch perl-5.10.0
#cd $DIR
#fi

# environment variables and global sources
export OPENDIHU_HOME=/store/software/opendihu
export OPENCMISS_HOME=/media/maierbn/ext/2018/opencmiss

# User specific aliases and functions
alias ssh="ssh -Y" 
alias big="du -a . | sort -n -r | head -n 10"
alias bashrc="vi ~/.bash_aliases"
alias rs=". ~/.bashrc"
alias ,="cd ."
alias ..="cd .."
alias ,,="cd .."
alias ..y="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."
alias .........="cd ../../../../../../../.."
alias ..........="cd ../../../../../../../../.."
alias l='ll -h'
alias pd='popd'
alias ?="echo 'ich weiß auch nicht'"
alias gr="grep -iInr"
alias cpr="cp -r"
alias cp-r="cp -r"
alias dc='cd'
alias mk='make clean && make'
alias ccc='rm -rf CMakeFiles/ CMakeCache.txt cmake_install.cmake Makefile CTestTestfile.cmake export mpi_verification packaging Tests support'
alias hazel='echo "start ssh-tunnel with ssh -N -D 1080 localhost  \n remember pw: h*r7p*" && ssh -R 7777:localhost:1080 icbbnmai@hazelhen.hww.de'
alias neon='ssh -X maierbn@neon'
alias helium='ssh -X maierbn@helium'
alias heluim='helium'
alias ipvslogin='ssh -X maierbn@ipvslogin.informatik.uni-stuttgart.de'
alias ipvs='ipvslogin'
alias build='. build.sh'
alias biuld='. build.sh'
alias itg='git'
alias igt='git'
alias gti='git'
alias gi='git'
alias dd='dolphin . > /dev/null 2>/dev/null &'
alias d='cd build_debug'
alias out='cd out'
alias dusch='du -sck * | sort -n'
alias gdbrun='gdb -ex=run --args '
alias k='kill %%'
alias kk='kill %% && kill %%'
alias kkk='kill %% && kill %% && kill %%'
alias kkkk='kill %% && kill %% && kill %% && kill %%'
alias kkkkk='kkkk && kill %%'
alias kkkkkk='kkkkk && kill %%'
alias kkkkkkk='kkkkkk && kill %%'
alias kkkkkkkk='kkkkkkk && kill %%'
alias kkkkkkkkk='kkkkkkkk && kill %%'
alias K='kkkkkkkkk;kkkkkkkkk;kkkkkkkkk;kkkkkkkkk;kkkkkkkkk;kkkkkkkkk;kkkkkkkkk'
alias k='kill %%; killall -9 fibers_emg; killall -9 generate; killall -9 fibers_linear_elasticity; killall -9 3d_hyperelasticity; killall -9 cc1plus; killall -9 fast_fibers_emg'
#alias purgekernels="sudo apt-get purge $(dpkg -l linux-{image,headers}-"[0-9]*" | awk '/ii/{print $2}' | grep -ve "$(uname -r | sed -r 's/-[a-z]+//')")"
alias s='scons'
alias sdr='srd'
alias srdd='cd .. && scons BUILD_TYPE=rd; cd -'
alias thop='htop'
alias ohtp='htop'
alias htpo='htop'
alias hopt='htop'
alias hotp='htop'
alias hpto='htop'
alias hpot='hotp'
alias ohpt='htop'
alias ohtp='htop'
alias opht='htop'
alias opth='htop'
alias otph='htop'
alias othp='htop'
alias thpo='htop'
alias tpoh='htop'
alias tpho='htop'
alias ptho='htop'
alias ptoh='htop'
alias phot='htop'
alias phto='htop'
alias poth='htop'
alias poht='htop'
alias pdflatex='pdflatex --synctex=1'
alias ptyhon='python'
alias gbd='gdb'
alias memcheck='valgrind --tool=memcheck --log-file=valgrind-log-%p.txt --suppressions=/store/software/opendihu/dependencies/python/src/Python-3.6.5/Misc/valgrind-python.supp'
alias memcheck2='mpirun -n 2 valgrind --tool=memcheck --log-file=valgrind-log-%p.txt --suppressions=/store/software/opendihu/dependencies/python/src/Python-3.6.5/Misc/valgrind-python.supp'
alias memcheck3='mpirun -n 3 valgrind --tool=memcheck --log-file=valgrind-log-%p.txt --suppressions=/store/software/opendihu/dependencies/python/src/Python-3.6.5/Misc/valgrind-python.supp'
alias memcheck4='mpirun -n 4 valgrind --tool=memcheck --log-file=valgrind-log-%p.txt --suppressions=/store/software/opendihu/dependencies/python/src/Python-3.6.5/Misc/valgrind-python.supp'
alias ubild='cd build_debug'
alias sl='ls'
alias rename_images='exiftool -d %Y.%m.%d_%H.%M.%S%%-c.%%e "-filename<filemodifydate" "-filename<createdate" "-filename<datetimeoriginal"'
alias temp="paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/'"
alias load=$'top -bn 2 -d 0,1 | grep \'^%Cpu\' | tail -n 1 | gawk \'{print ($2+$4+$6)*0.04}\''
alias core="rm -f core && ulimit -c unlimited"
alias recvout="echo 'scp ipvslogin.informatik.uni-stuttgart.de:dump/out.tgz . && tar xf out.tgz && cd out' && scp ipvslogin.informatik.uni-stuttgart.de:dump/out.tgz . && tar xf out.tgz && cd out"
alias chardiff="git diff --no-index --word-diff=color --word-diff-regex=."  # usage diff file1 file2


# ------ program launchers --------
alias 7zip="7za x"
alias tan="/store/misc/tan/tan"
alias libr='libreoffice'
alias oo='libr'
alias para='paraview'
alias gitp='git'
alias qgit='git'

alias g="geany"
alias o="okular "
alias f="firefox "


# ------- directory shortcuts ------------
alias tis='tig status'
alias out='cd out'

# ----- environment variables -------------

#---- coloring ------------------------
# Add git branch if its present to PS1
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='\[\e[1;32m\]\u@\h\[\e[m\]\[\e[37m\] $(parse_git_branch)\[\e[m\] \[\e[1;30m\]\w\[\e[m\] \[\e[1;32m\]\n\$\[\e[m\]\[\e[1;37m\]'

#trap 'printf "\e[0m" "$_"' DEBUG
trap '[[ -t 1 ]] && tput sgr0' DEBUG

#Autovervollständigung für ssh mit Angaben aus .ssh/config
#_ssh()
#{
#    local cur prev opts
#    COMPREPLY=()
#    cur="${COMP_WORDS[COMP_CWORD]}"
#    prev="${COMP_WORDS[COMP_CWORD-1]}"
#    opts=$(grep '^Host' ~/.ssh/config | awk '{print $2}')
#
#    COMPREPLY=( $(compgen -W "$opts" -- ${cur}) )
#    return 0
#}
#complete -F _ssh ssh scp

# initialize fasd
eval "$(fasd --init bash-hook bash-ccomp bash-ccomp-install)"

#-------- functions ------------
[ -z "$PS1" ] && return,	# if this is in a script, don't use the following aliases

# function to execute built-in cd
fasd_cd() {
  if [ $# -le 1 ]; then
    fasd "$@"
  else
    local _fasd_ret="$(fasd -e 'printf %s' "$@")"
    [ -z "$_fasd_ret" ] && return
    [ -d "$_fasd_ret" ] && cd "$_fasd_ret" || printf %s\n "$_fasd_ret"
  fi
}
alias z='fasd_cd -d'
alias zz='fasd_cd -d -i'

# fasd & fzf change directory - jump using `fasd` if given argument, filter output of `fasd` using `fzf` else
cdf() {
    [ $# -gt 0 ] && fasd_cd -d "$*" && return
    local dir
    dir="$(fasd -Rdl "$1" | fzf -1 -0 --no-sort +m)" && cd "${dir}" || return 1
}

function cd() {
  if [ -d "$@" ]; then
    #echo -n "Stack: "
    pushd "$@" > /dev/null
    #builtin cd "$targetfile"
    pwd
    echo " "
    ls
  else
    if [ $(command -v fasd) ]; then
      cdf "$@"
    else 
      builtin cd "$@"
    fi
  fi
}
function popd() {
    builtin popd "$@" > /dev/null
    pwd
    echo " "
    ls
}
function mkdircd() {
  mkdir -p $@ && cd $@
}

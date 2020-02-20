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
shopt -s autocd     # automatically cd to directory

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
alias sust='xamppstart && firefox "localhost/sust/index.php?all"'
alias cl='rm -rf tmp.cellml2code.* profiling.000* EMG.out* duration.000* out* fort.* EMGExample_* *.diag.* *.diag *.out.* *.out && ,'
alias abbr='g /store/wiss/organisation/abbreviations.txt&'
alias build='. build.sh'
alias biuld='. build.sh'
alias samba='sudo mount -t cifs -o username=maierbn //sambasgs/maierbn /mnt/samba'
alias whatchanged='meld $OPENCMISS_HOME/iron_maierbn/src/iron/src/ $OPENCMISS_HOME/iron_official/src/iron/src/ &'
alias hu='cd $OPENCMISS_HOME/examples/cuboid_heidlauf_unchanged/build_release'
alias uh='hu'
alias rmex='rm *.ex* && ,'
alias rmnpy='rm *.npy *.vtr'
alias visualize='$OPENCMISS_HOME/own_scripts/visualize/visualize.py'
alias visualize2='$OPENCMISS_HOME/own_scripts/visualize/visualize.py 1'
alias itg='git'
alias igt='git'
alias gti='git'
alias gi='git'
alias dd='dolphin . > /dev/null 2>/dev/null &'
alias dusch='du -sck * | sort -n'
alias rm*='rm *'
alias chardiff='git diff --word-diff=color --word-diff-regex=. --no-index'
alias ct='cd'

alias gdbrun='gdb -ex=run --args '
alias fixmon='rm ~/.local/share/kscreen/*'
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
alias k='kill %%; killall -9 fibers_emg; killall -9 fibers_febio; killall -9 generate; killall -9 fibers_linear_elasticity; killall -9 3d_hyperelasticity; killall -9 cc1plus; killall -9 fast_fibers_emg; killall -9 hodgkin_huxley_strang'
#alias purgekernels="sudo apt-get purge $(dpkg -l linux-{image,headers}-"[0-9]*" | awk '/ii/{print $2}' | grep -ve "$(uname -r | sed -r 's/-[a-z]+//')")"

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
alias rmlatex='rm *.aux *.idx *.log *.out *.thm *.synctex.gz'
alias ptyhon='python'
alias gbd='gdb'
alias memcheck='rm -f valgrind-log*; valgrind --tool=memcheck --log-file=valgrind-log-%p.txt --suppressions=/store/software/opendihu/dependencies/python/src/Python-3.6.5/Misc/valgrind-python.supp'
alias memcheck2='rm -f valgrind-log*; mpirun -n 2 valgrind --tool=memcheck --log-file=valgrind-log-%p.txt --suppressions=/store/software/opendihu/dependencies/python/src/Python-3.6.5/Misc/valgrind-python.supp'
alias memcheck3='rm -f valgrind-log*; mpirun -n 3 valgrind --tool=memcheck --log-file=valgrind-log-%p.txt --suppressions=/store/software/opendihu/dependencies/python/src/Python-3.6.5/Misc/valgrind-python.supp'
alias memcheck4='rm -f valgrind-log*; mpirun -n 4 valgrind --tool=memcheck --log-file=valgrind-log-%p.txt --suppressions=/store/software/opendihu/dependencies/python/src/Python-3.6.5/Misc/valgrind-python.supp'
alias ubild='cd build_debug'
alias sl='ls'
alias rename_images='exiftool -d %Y.%m.%d_%H.%M.%S%%-c.%%e "-filename<filemodifydate" "-filename<createdate" "-filename<datetimeoriginal"'
alias temp="paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/'"
alias load=$'top -bn 2 -d 0,1 | grep \'^%Cpu\' | tail -n 1 | gawk \'{print ($2+$4+$6)*0.04}\''
alias core="rm -f core && ulimit -c unlimited"
alias tarx="/usr/bin/tarx.sh"
alias recvout="echo 'scp ipvslogin.informatik.uni-stuttgart.de:dump/out.tgz . && tar xf out.tgz && cd out' && scp ipvslogin.informatik.uni-stuttgart.de:dump/out.tgz . && tar xf out.tgz && cd out"
alias chardiff="git diff --no-index --word-diff=color --word-diff-regex=."  # usage diff file1 file2
alias flops="echo \"interrupt by Ctrl-C, then call:  compute_flops.py p.txt; rm p.txt\" && sudo perf stat -e r5301c7,r5304c7,r5310c7 > p.txt 2>&1"
#alias flops=". flops.sh"
alias rmrf="rm -rf"

# ssh
alias marvin='ssh -X maierbn@marvin.informatik.uni-stuttgart.de'
alias bwuni='ssh -X st_smt86072@bwunicluster.scc.kit.edu'
alias lead='ssh -X lead.isr.uni-stuttgart.de'
#alias hazel='echo "starting ssh-tunnel" && ssh -N -D 1080 localhost & ssh -R 7876:localhost:1080 icbbnmai@hazelhen.hww.de'
alias hazel='echo "start ssh-tunnel with ssh -N -D 1080 localhost  \n remember pw: h*r7p*" && ssh -R 7777:localhost:1080 icbbnmai@hazelhen.hww.de'
#alias hazel='ssh icbbnmai@hazelhen.hww.de'
alias lead='ssh lead.isr.uni-stuttgart.de -X'
alias legion='ssh ubuntu@192.168.209.7'
alias neon='ssh -X maierbn@neon'
alias helium='ssh -X maierbn@helium'
alias heluim='helium'
alias ipvslogin='ssh -X maierbn@ipvslogin.informatik.uni-stuttgart.de'
alias ipvs='ipvslogin'
#alias '-'='pd'

# opencmiss
alias mkd='$OPENCMISS_HOME/own_scripts/mkd.sh'
alias mkr='$OPENCMISS_HOME/own_scripts/mkr.sh'
alias mkrp='$OPENCMISS_HOME/own_scripts/mkrp.sh'
alias mkrc='$OPENCMISS_HOME/own_scripts/mkrc.sh'
alias mkdc='$OPENCMISS_HOME/own_scripts/mkdc.sh'
alias mkdd='$OPENCMISS_HOME/own_scripts/mkdd.sh'
alias cuboid='./cuboid'
alias iron_clr='cd $OPENCMISS_HOME/iron_maierbn && rm -rf build install && cd - && ,'
alias iron_cl='iron_clr'
alias precice_vis='cat precice-config.xml | precice-config-visualizer | dot -Tpdf > precice-config.pdf && o precice-config.pdf'

# opendihu
alias mkor='$OPENDIHU_HOME/scripts/shortcuts/mkor.sh'
alias mkorn='$OPENDIHU_HOME/scripts/shortcuts/mkorn.sh'
alias mkod='$OPENDIHU_HOME/scripts/shortcuts/mkod.sh'
alias mkodn='$OPENDIHU_HOME/scripts/shortcuts/mkodn.sh'
alias mkordn='$OPENDIHU_HOME/scripts/shortcuts/mkordn.sh'
alias scons='$OPENDIHU_HOME/dependencies/scons/scons.py'
alias s='scons'
alias sd='$OPENDIHU_HOME/scripts/shortcuts/sd.sh'
alias sdd='$OPENDIHU_HOME/scripts/shortcuts/sdd.sh'
alias sddn='cd .. && scons BUILD_TYPE=d no_tests=yes no_examples=yes; cd -'
alias sdn='scons BUILD_TYPE=d no_tests=yes no_examples=yes'
alias srn='scons BUILD_TYPE=r no_tests=yes no_examples=yes'
alias sr='$OPENDIHU_HOME/scripts/shortcuts/sr.sh'
alias srd='$OPENDIHU_HOME/scripts/shortcuts/srd.sh'
alias srr='$OPENDIHU_HOME/scripts/shortcuts/srr.sh'
alias sdr='srd'
alias srdd='cd .. && scons BUILD_TYPE=rd; cd -'

# ------ program launchers --------
alias plasma='plasmashell > /dev/null 2>&1 &'  # start plasma shell when it crashed
alias cmgui2.7='$OPENCMISS_HOME/cmgui_2.7/cmgui-wx > /dev/null 2>&1 '
alias cmgui2.8='$OPENCMISS_HOME/cmgui_2.8/cmgui-wx > /dev/null 2>&1 '
alias cmgui2.9='$OPENCMISS_HOME/cmgui_2.9/cmgui-wx > /dev/null 2>&1 '
#alias cmgui=cmgui2.9
alias prepare_cmgui='export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/perl5/perlbrew/build/perl-5.10.0 && perlbrew switch perl-5.10.0'
alias xamppstart="sudo /opt/lampp/xampp start"
alias xampprestart="sudo /opt/lampp/xampp restart"
alias xamppstop="sudo /opt/lampp/xampp stop"
alias xampp="sudo /opt/lampp/manager-linux-x64.run"
alias 7zip="7za x"
alias tan="/store/misc/tan/tan"
alias codeblocks='~/Downloads/CodeBlocks_Fortran_v1.3_Linux64/codeblocks_run.sh > /dev/null 2>&1 &'
alias codeblocksv='~/Downloads/CodeBlocks_Fortran_v1.3_Linux64/codeblocks_run.sh &'
alias jab='/store/software/JabRef/bin/JabRef 2>&1 >/dev/null &' #'java -jar /store/software/jabref/JabRef-4.3.1.jar 2>&1 > /dev/null &'
alias jabref='jab'
alias progress='g /store/wiss/organisation/progress.txt&'
alias record='kazam &'
alias libr='libreoffice '
alias oo='libr'
alias cura='/store/software/cura/Ultimaker_Cura-4.3.0.AppImage &'
alias totalview='/store/software/toolworks/totalview.2016.01.06/bin/totalview'
alias tv='totalview'
alias hotp='htop'
alias paraview='/store/software/paraview/ParaView-5.6.0-RC1-Qt5-MPI-Linux-64bit/bin/paraview'
alias para='paraview'
alias pyod='$OPENDIHU_HOME/dependencies/python/install/bin/python3'
alias pipod='$OPENDIHU_HOME/dependencies/python/install/bin/pip3'
alias flamegraph='. $OPENDIHU_HOME/scripts/flame_graph.sh'
alias gitp='git'
alias qgit='git'
alias la='latexmk main.tex -pvc -pdf -synctex=1 < /dev/null'
alias pympirun='/store/software/opendihu/dependencies/mpi/install/bin/mpirun'
alias matlab='/data/software/matlab2018/bin/matlab'
alias meshlab='meshlab > /dev/null 2>&1'
alias febio='/store/software/febio/febio/bin/febio2'
alias postview='/store/software/febio/postview/bin/PostView2'
alias bpls='/store/software/opendihu/dependencies/adios/install/bin/bpls'

alias g="geany"
alias o="okular "
alias f="firefox "


# ------- directory shortcuts ------------
alias store="cd /store"
#alias e="cd $OPENCMISS_HOME/examples"
alias e="a"
alias ee='cd $OPENCMISS_HOME_official/opencmiss/src/examples'
alias rel='cd $OPENCMISS_HOME/examples/cuboid/build_release/Fortran'
alias deb='cd $OPENCMISS_HOME/examples/cuboid/build_debug/Fortran'
alias iron='cd $OPENCMISS_HOME/iron_maierbn'
alias src='cd $OPENCMISS_HOME/iron_maierbn/src/iron/src'
alias manage='cd $OPENCMISS_HOME/iron_maierbn/manage'
alias ev='cd $OPENCMISS_HOME/evaluation'
alias p='cd $OPENCMISS_HOME/performance'
alias p='cd /store/software/performance/opendihu'
alias ti='cd /store/Office/projekt_tischkicker'
alias dihu='cd /data/store/wiss/dihu'
alias irtg='cd /store/wiss/irtg'
alias ww='cd /store/wiss'
alias wiss='cd /store/wiss'
alias wi='cd /store/wiss'
alias opencmiss='cd $OPENCMISS_HOME'
alias bd='cd $OPENCMISS_HOME/iron_maierbn/manage/build_debug'
alias br='cd $OPENCMISS_HOME/iron_maierbn/manage/build_release_no_profiling'
alias pr='cd /store/wiss/progress && g /store/wiss/progress/progress.tex && o /store/wiss/progress/progress.pdf&'
alias sgs='cd /store/wiss/jabref/SGS'
alias 3d='cd /store/wiss/3dprinter'
alias 2017='cd /store/wiss/2017'
alias 2018='cd /store/wiss/2018'
alias 2019='cd /store/wiss/2019'
alias 2020='cd /store/wiss/2020'
alias 2='2018'
alias 8='2018'
alias 18='2018'
alias 9='2019'
alias 0='2020'
alias 1='cd /store/wiss/dihu/gitbucket/papers/frontiers_special_issue'
alias software='cd /store/software'
alias sw='software'
alias a='cd $OPENDIHU_HOME'
alias fa='cd /store/wiss/2017/ferienakademie'
alias doc='cd $OPENDIHU_HOME/doc/derivations'
alias tests='cd $OPENDIHU_HOME/testing/system_testing/tests'
alias testing='cd $OPENDIHU_HOME/testing/system_testing/tests'
alias dep='cd $OPENDIHU_HOME/dependencies/scons-config'
alias unit='cd $OPENDIHU_HOME/testing/unit_testing/build_debug'
#alias 0='sdd && reset && ./mooney_rivlin_incompressible_mixed2d  ../settings_mixed_2d.py  2 mooney_rivlin_incompressible_mixed2d_numeric_jacobian_scenario_2'
alias c='cd build_debug/'
alias b='cd build_debug/'
alias r='cd build_release/'
alias share='cd /store/wiss/share'
alias dump='cd ~/dump'
alias dump2='cd /data/dump2'
alias stu='cd /store/wiss/students'
alias students='stu'
alias student='stu'
alias cmake='/store/software/cmake/cmake-3.13.2-Linux-x86_64/bin/cmake'
alias tis='tig status'
alias out='cd out'
alias d='cd build_debug'
alias data='cd /data'

# ----- environment variables -------------
export OPENCMISS_SDK_DIR=$OPENCMISS_HOME/dependencies/install
#export OPENCMISS_INSTALL_DIR=$OPENCMISS_HOME/1_iron_thomas/install
#export OPENCMISS_INSTALL_DIR=$OPENCMISS_HOME/0_iron/install
#export OPENCMISS_INSTALL_DIR=$OPENCMISS_HOME/2_iron_thomas_unofficial/install
export OPENCMISS_INSTALL_DIR=$OPENCMISS_HOME/iron_maierbn/install

# new opencmiss build system
export OpenCMISSLibs_DIR=/media/maierbn/Samsung_T5/opencmiss_official2/opencmiss/install/
#export OPENCMISS_INSTALL_DIR=$OPENCMISS_HOME/3_iron_thomas_unofficial_unchanged/install
export OPENCMISS_INPUT_DIR=$OPENCMISS_HOME/examples/cuboid/input

export OPENCMISS_ROOT=$OPENCMISS_HOME/legacyOpenCMISSRoot
export OPENCMISS_INPUT_DIR=$OPENCMISS_HOME/examples/cuboid/input
export OPENCMISS_REL_DIR=$OPENCMISS_HOME/examples/cuboid/build_release/Fortran
export OPENCMISS_DEB_DIR=$OPENCMISS_HOME/examples/cuboid/build_debug/Fortran
export OPENCMISS_EXTRAS=$OPENCMISS_HOME/extras
export TAU_CALLPATH=1
export WISS_DIR=/store/wiss
export PATH=$PATH:$OPENCMISS_HOME/extras/TAU/tau-2.23.1/install/x86_64/bin
export PATH=$PATH:/store/wiss/3dprinter/scripts
export PATH=$PATH:$OPENDIHU_HOME/scripts
export PATH=$PATH:$OPENDIHU_HOME/scripts/geometry_manipulation
export PATH=$PATH:$OPENDIHU_HOME/scripts/file_manipulation
export PATH=$PATH:$OPENDIHU_HOME/dependencies/python/install/bin
export PATH=$PATH:/store/software/opencor/OpenCOR-0-5-Linux
export PATH=$PATH:/store/software/paraview/ParaView-5.6.0-RC1-Qt5-MPI-Linux-64bit/bin
export PATH=$PATH:/store/software/FlameGraph
export PATH=$PATH:/store/software/febio/febio/bin
export TAU_DIR=$OPENCMISS_HOME/extras/TAU/tau-2.23.1/install/x86_64/lib
#export PETSC_DIR=$OPENDIHU_HOME/dependencies/petsc/src/petsc-3.7.6
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$OPENDIHU_HOME/dependencies/petsc/install/lib
export PYTHONPATH=$OPENCMISS_HOME/own_scripts:$OPENDIHU_HOME/scripts:$OPENDIHU_HOME/scripts/geometry_manipulation
export CHASTE_TEST_OUTPUT=/data/software/chaste/build/projects/opendihu_test/apps

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/store/software/simbody/install:/store/software/opensim/opensim-core/install
export LD_LIBRARY_PATH=/data/software/sgpp/SGpp-3.2.0/lib/sgpp:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/store/software/opendihu/dependencies/adios/install/lib:$LD_LIBRARY_PATH

export SIMBODY_HOME=/store/software/simbody/src
export OPENSIM_HOME=/store/software/opensim/opensim-core/src
export Franka_DIR=/store/software/libfranka/build
#source /opt/ros/kinetic/setup.bash

#---- coloring ------------------------
#erzwingt farbige Ausgabe
force_color_prompt=yes
color_prompt=yes

# Add git branch if its present to PS1
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
#färbt Terminal passend ein
if [ "$color_prompt" = yes ]; then
# normal
PS1='\[\e[1;32m\]\u@\h\[\e[m\]\[\e[37m\] $(parse_git_branch)\[\e[m\] \[\e[1;30m\]\w\[\e[m\] \[\e[1;32m\]\n\$\[\e[m\]\[\e[1;37m\]'
# red
# PS1='\[\e[1;32m\]\u@\h\[\e[m\]\[\e[1;37m\] $(parse_git_branch)\[\e[m\] \[\e[1;30m\]\w\[\e[m\] \[\e[1;32m\]\n\$\[\e[m\]\[\e[1;31m\]'
# PS1='\[\e[1;32m\]\u@\h\[\e[m\] $(parse_git_branch)\[\e[m\] \[\e[1;32m\]\n\$\[\e[m\]\[\e[1;37m\]'
else
#ungenutzt, da prompt immer farbig
 PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
fi
unset color_prompt force_color_prompt

#Stellt sicher, dass Ausgabe "normal" formatiert ist
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
    [ -z "$_fasd_ret" ] && printf "No such file or directory.\n" && return
    [ -d "$_fasd_ret" ] && cdred "$_fasd_ret" || printf %s\n "$_fasd_ret"
  fi
}
alias z='fasd_cd -d'
alias zz='fasd_cd -d -i'

cdred() {
 if [ -d "$@" ]; then
    #echo -n "Stack: "
    pushd "$@" > /dev/null
    #builtin cd "$targetfile"
    printf "\033[0;31m"
    pwd 
    printf " \033[0m\n"
    ls  
  else
    if [ $(command -v fasd) ]; then
      cdf "$@"
    else 
      builtin cd "$@"
    fi  
  fi  
}

# fasd & fzf change directory - jump using `fasd` if given argument, filter output of `fasd` using `fzf` else
cdf() {
    [ $# -gt 0 ] && fasd_cd -d "$*" && return
    local dir
    dir="$(fasd -Rdl "$1" | fzf -1 -0 --no-sort +m)" && cd "${dir}" || return 1
}

function cd() {
  if [ $# -gt 1 ]; then
    if [[ "$1" == "--" ]]; then
      shift
    fi
  fi

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

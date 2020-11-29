#alias sudo="sudo env PATH=$PATH CFLAGS=$CFLAGS CXXFLAGS=$CXXFLAGS"
alias sudos="sudo -s"
alias lv="lv -c"
alias bzip="bzip2"
alias t="tmux"
alias ta="tmux attach"
alias AXMLPrinter="java -jar ~/opt/AXMLPrinter2.jar"
alias apktool="java -jar ~/opt/apktool.jar"
alias asm="java -jar ~/opt/asm.jar"
#alias vimfetch='cd ~/.vim/bundle/; for d in (ls --color=none); cd \$d; git fetch --all; prevd; end; prevd;'
alias halt="sudo shutdown -h now"
alias vi="vim"
alias envfetch="for d in (find ~/.anyenv/envs/* -maxdepth 0 -type d); echo \$d; cd \$d; git pull -p; prevd; for p in (find \$d/plugins/* -maxdepth 0 -type d); echo \$p; cd \$p; git pull -p; prevd; end; end;"
alias fixpycharm="docker images | grep -i pycharm | awk '{print \$3}' | xargs docker rmi"

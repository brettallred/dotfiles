alias resource="source ~/.zshrc"
alias reload!="source ~/.zshrc"
alias vz="vim ~/.zshrc"
alias a='ls -lrthG'
alias retag='ctags --exclude=.svn --exclude=.git --exclude=log --exclude=tmp * && ctags.sh'
alias u='cd ..' #up a directory
alias goclean='rm -R vendor && rm -R Godeps'

alias rastage= "ssh -L 15675:localhost:15672 rabbit01-core-stage.awse.nuviapp.com"
alias raprod= "ssh -L 15674:localhost:15672 rabbit01-core-prod.awse.nuviapp.com"

alias bigfoot_prod='ssh -L 9205:localhost:9200 esc02-bigfoot-prod.awse.nuviapp.com'
alias bigfoot_stage='ssh -L 9206:localhost:9200 es01-bigfoot-stage.awse.nuviapp.com'
alias ctags="`brew --prefix`/bin/ctags"

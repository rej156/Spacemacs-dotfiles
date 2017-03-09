alias connectCloud="ssh -i ~/.ssh/eric-juta.pem ubuntu@ec2-54-229-158-76.eu-west-1.compute.amazonaws.com"
export NVM_DIR="/Users/ericjuta/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export GOPATH=$HOME/Documents/go-workspace
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
alias golambdabuild="GOOS=linux GOARCH=amd64 go build"
export DISPLAY_MAC=`ifconfig en0 | grep "inet " | cut -d " " -f2`:0
defaults write org.macosforge.xquartz.X11 nolisten_tcp -boolean false

function startx() {
    if [ -z "$(ps -ef|grep XQuartz|grep -v grep)" ] ; then
        open -a XQuartz
    fi
}

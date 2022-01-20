function startvm(){
    sudo date $(date -j -f %s $((`date +%s`-315360000)) +%m%d%H%M%Y.%S) &> /dev/null
    /usr/local/bin/prlctl start $1
    sudo sntp -sS time.apple.com &> /dev/null
}

function listvm(){
    /usr/local/bin/prlctl list -ao name -s mac
}

function stopvm(){
    /usr/local/bin/prlctl stop $1
}

function cdd() {
    PIPE=/tmp/catpipe
    cd $@
    echo "@clear" > $PIPE
    echo "@pwd" > $PIPE
    echo "@echo" > $PIPE
    echo "@cd $@" > $PIPE
    echo "@ls" > $PIPE
}

function sendpipe() {
    PIPE=/tmp/catpipe
    rm -rf $PIPE
    [[ ! -p $PIPE ]] && mkfifo $PIPE

    while true; do
        while read line; do
            case "$line" in
                @exit) rm -f $PIPE && exit 0;;
                @*) eval "${line#@}" ;;
                * ) echo "$line" ;;
            esac
        done <$PIPE
    done
}

if pgrep -x "dropbox" > /dev/null
then
    printf "<span color='#ffffff'></span>"
else
    printf "<span color='#1e90ff'></span>"
fi

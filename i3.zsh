# Start i3
# TODO: This probably should go somewhere else. Have nothing to do with zsh

# 1 - Main World
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]];
then
    cat /home/omarabid/.config/i3/config /home/omarabid/.config/i3/spaces/main > /home/omarabid/.config/i3/tmp/mainconf;
    startx /usr/bin/i3 -c /home/omarabid/.config/i3/tmp/mainconf --;
#exec numlockx &;
fi

# 2 - crates.live
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty2 ]];
then
    cat /home/omarabid/.config/i3/config /home/omarabid/.config/i3/spaces/crateslive > /home/omarabid/.config/i3/tmp/clconf;
    startx /usr/bin/i3 -c /home/omarabid/.config/i3/tmp/clconf --;
fi

# 3 - Rust projects
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty3 ]];
then
    cat /home/omarabid/.config/i3/config /home/omarabid/.config/i3/spaces/rust > /home/omarabid/.config/i3/tmp/rustconf;
    startx /usr/bin/i3 -c /home/omarabid/.config/i3/tmp/rustconf --;
fi

# 4 - Cascade
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty4 ]];
then
    cat /home/omarabid/.config/i3/config /home/omarabid/.config/i3/spaces/cascade > /home/omarabid/.config/i3/tmp/cascadeconf;
    startx /usr/bin/i3 -c /home/omarabid/.config/i3/tmp/cascadeconf --;
fi

# 5 - Abidcorp
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty5 ]];
then
    cat /home/omarabid/.config/i3/config /home/omarabid/.config/i3/spaces/abidcorp > /home/omarabid/.config/i3/tmp/acorpconf;
    startx /usr/bin/i3 -c /home/omarabid/.config/i3/tmp/acorpconf --;
fi

# 6 - Rust hired
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty6 ]];
then
    cat /home/omarabid/.config/i3/config /home/omarabid/.config/i3/spaces/rusthired > /home/omarabid/.config/i3/tmp/rhconf;
    startx /usr/bin/i3 -c /home/omarabid/.config/i3/tmp/rhconf --;
fi

# 7 - derive aplha
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty7 ]];
then
    cat /home/omarabid/.config/i3/config /home/omarabid/.config/i3/spaces/dalpha > /home/omarabid/.config/i3/tmp/daconf;
    startx /usr/bin/i3 -c /home/omarabid/.config/i3/tmp/daconf --;
fi

#!/bin/sh

files=`ls`
script_dir=$(readlink -f ${0%/*})
user_home=$(eval echo ~${SUDO_USER})

for f in $files; do
    if [ "$f" != "install.sh" ] ; then
        dotname=".$f"
        rm -rf "$user_home/$dotname"
        cp -rf "$script_dir/$f" "$user_home/$dotname"
    fi
done

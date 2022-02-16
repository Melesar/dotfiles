#!/bin/sh

UNITY_VERSION="2020.3.25f1"
UNITY_PATH=~/Unity/Hub/Editor/$UNITY_VERSION/Editor/Unity

selected_project=$(~/.scripts/get_projects.sh | rofi -dmenu -i)

eval $(ssh-agent)

SSH_ASKPASS="~/.scripts/askpass.sh" SSH_ASKPASS_REQUIRE=force ssh-add

[ -d $selected_project ] && $UNITY_PATH -projectPath $selected_project

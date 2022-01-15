#!/bin/sh

UNITY_VERSION="2020.3.25f1"
UNITY_PATH=~/Unity/Hub/Editor/$UNITY_VERSION/Editor/Unity

selected_project=$(./get_projects.sh | rofi -dmenu)

$UNITY_PATH -projectPath $selected_project

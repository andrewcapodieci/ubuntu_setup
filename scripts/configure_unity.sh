#!/bin/bash
stickyEdges=`dconf read /org/compiz/profiles/unity/plugins/unityshell/launcher-capture-mouse`
if [ "$stickyEdges" = "false" ]; then
  echo "Sticky edges already disabled."
else
    dconf write /org/compiz/profiles/unity/plugins/unityshell/launcher-capture-mouse false
fi

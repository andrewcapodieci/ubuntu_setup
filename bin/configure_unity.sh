#!/bin/bash
stickyEdges=`gconftool-2 -g "/apps/compiz-1/plugins/unityshell/screen0/options/launcher_capture_mouse"`
if [ "$stickyEdges" = "false" ]; then
  echo "Sticky edges already disabled."
else
  gconftool-2 -s "/apps/compiz-1/plugins/unityshell/screen0/options/launcher_capture_mouse" --type bool "false"
fi

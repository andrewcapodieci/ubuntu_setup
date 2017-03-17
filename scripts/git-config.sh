#!/bin/bash

existing_username=`git config --global user.name`
existing_email=`git config --global user.email`

if [[ ${#existing_username} == 0 ]];
then
  echo "Type your desired global git username followed by [ENTER]:"
  read g_username
  git config --global user.name "$g_username"
else
  echo "Git global username already set...continuing."
fi

if [[ ${#existing_email} == 0 ]];
then
  echo "Type your desired global git email followed by [ENTER]:"
  read g_email
  git config --global user.email $g_email
else
  echo "Git global email already set...continuing."
fi

git config --global diff.tool meld
git config --global merge.tool meld
git config --global --add difftool.prompt false

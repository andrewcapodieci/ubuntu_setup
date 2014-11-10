#!/bin/bash

existing_username=`git config user.name`
existing_email=`git config user.email`

if [[ existing_username == "" ]];
then
  echo "Type your desired global git username followed by [ENTER]:"
  read g_username
  git config --global user.name "$g_username"
else
  echo "Git global username already set...continuing."
fi

if [[ existing_email == "" ]];
then
  echo "Type your desired global git email followed by [ENTER]:"
  read g_email
  git config --global user.email $g_email
else
  echo "Git global email already set...continuing."
fi

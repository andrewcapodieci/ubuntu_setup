#!/bin/bash
if [[ $(tail -1 $HOME/.bashrc) == "source $HOME/ubuntu_setup/env/bash.local" ]];
then
  echo "Already sourcing env/bash.local in $HOME/.bashrc"
else
  echo "source $HOME/ubuntu_setup/env/bash.local" >> $HOME/.bashrc
  echo "Added sourcing of env/bash.local to $HOME/.bashrc"
fi

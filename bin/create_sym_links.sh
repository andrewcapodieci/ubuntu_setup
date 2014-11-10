echo -n "Creating sym link ~/.inputrc to ~/ubuntu_setup/env/dot_inputrc..."
if [ -f /home/andrewc1204/.inputrc ];
then
  echo "file already exists."
else
  ln -s ~/ubuntu_setup/env/dot_inputrc ~/.inputrc
  echo "done."
fi

for file in $( ls $HOME/ubuntu_setup/env/dot_* ); do
  filename=${file/ubuntu_setup\/env\/dot_/.}
  echo -n "Creating sym link $filename to $file..."
  if [ -f $filename ];
  then
    echo "file already exists."
  else
    ln -s $file $filename
    echo "done."
  fi
done

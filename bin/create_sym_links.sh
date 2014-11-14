for file in $( ls $HOME/ubuntu_setup/env/dot_* ); do
    filename=${file/ubuntu_setup\/env\/dot_/.}
    create_file=false
    echo -n "Creating sym link $filename to $file..."
    if [[ -f $filename ]]; then
        read -p "File already exists. Overwrite file [Y/n]?:" -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            ln -s -f $file filename 
            echo "Overwrote existing softlink for $filename"
        fi 
    else
        ln -s $file $filename
        echo "Created softlink for $filename"
    fi
    echo "...done."
done

pushd /etc/sysctl.d
sudo ln -s ~/ubuntu_setup/env/60-core-pattern.conf
pushd /usr/bin
sudo ln -s ~/ubuntu_setup/bin/core_helper
sudo ln -s ~/ubuntu_setup/bin/ggg
popd
popd

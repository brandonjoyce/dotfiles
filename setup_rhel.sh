# Install Stow
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Stow
rpm -ivh ftp://195.220.108.108/linux/fedora/linux/updates/23/i386/s/stow-2.2.2-1.fc23.noarch.rpm
rm ~/.bash_profile

# Install Tree
yes | yum install tree

# Install git-extras
yes | yum install git-extras

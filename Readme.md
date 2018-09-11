# Install scoop
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

# Install applications
scoop install 7zip
scoop install cmder
scoop install fzf
scoop install git
scoop install vim
scoop install ripgrep
scoop install vswhere
scoop install yarn

# Symlic files in .dots
mklink Link .dots\Target

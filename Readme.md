# Install scoop
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

# Install extras bucket for scoop
scoop bucket add nerd-fonts

# Install applications with scoop
scoop install 7zip
scoop install fzf
scoop install git
scoop install vim
scoop install ripgrep
scoop install vswhere
scoop install yarn
scoop install hack-font

# Symlic files in .dots
mklink Link .dots\Target

# Install Python
install python 27 x64
install python 36 x64

add python27 and python27\scripts to path
add python36 and python36\scripts to path

# Update env vairables

add variable FZF_DEFAULT_COMMAND with value rg --files --no-ignore-vcs --hidden

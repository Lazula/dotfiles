# Dotfiles

Currently a quick hack to make it easier to access my configs. Might make a
quick install script later, but I'll need to do some testing.

For `.vimrc` to work, you'll need to install `vim-plug` as described in its [repo](https://github.com/junegunn/vim-plug). The command for Linux is reproduced below for convenience:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

For YouCompleteMe, install the following packages:

```
sudo apt install build-essential cmake vim-nox python3-dev mono-complete \
    golang nodejs default-jdk npm
```

For vim-instant-markdown, install the following packages:

```
pip install --user smdv
sudo apt install xdg-utils curl nodejs
npm -g install instant-markdown-d
```

Then, open `vim` and run `:PlugInstall` to download the plugins. No further action must be taken.

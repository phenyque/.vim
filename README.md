# .vim directory
Vim config repository

## Add new plugins
*quick reminder for my amnesia self*

Add git repository to .vimrc as:
```
Plugin foo/bar.git
Plugin git:url.to.plugin.not.at.github.zap/plugin.git
```

Install from within vim with `:PluginInstall`.

For YouCompleteMe, see [here](https://github.com/ycm-core/YouCompleteMe).

## Notes to self
- Dont set Leader- Combinations with more than one char since all single-char
  combis will have to wait the full second (or so) that Leader waits for
  possible additional input
- when setting up on a new machine, first get vundle with `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

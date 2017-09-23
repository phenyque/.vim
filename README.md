# .vim directory
Vim config repository

### For now includes:
- **[ack](https://github.com/mileszs/ack.vim)** Recursive search
- **[lightline](https://github.com/itchyny/lightline.vim)** Minimalistic vim statusline
- **[syntastic](https://github.com/vim-syntastic/syntastic)** Syntax checking
- **[vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)** Multicursor support
- **[fugitive](https://github.com/tpope/vim-fugitive)** Git integration
- **[nerdtree](https://github.com/scrooloose/nerdtree)** File tree viewer
- **[solarized](https://github.com/altercation/vim-colors-solarized)** Colorscheme
- **[YouCompleteMe](https://github.com/Valloric/YouCompleteMe)** Code-Completion
- **[autoclose](https://github.com/Valloric/YouCompleteMe)** automatically add closing parantheses and stuff

### Add new plugins
*quick reminder for my amnesia self*

Add new plugins that are on github as submodules!
```
cd .vim
git submodule add <Link-to-Github-Repo> bundle/<Plugin-name>
git submodule init
git submodule update
```
**Once in a while run `git submodule` to fetch updates for the plugins!!**

**When reinstalling YouCompleteMe run `git submodule update --init --recursive`**

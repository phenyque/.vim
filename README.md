# .vim directory
Vim config repository

### For now includes:
- **ack** Recursive search
- **lightline** Minimalistic vim statusline
- **syntastic** Syntax checking
- **vim-multiple-cursors** Multicursor support
- **fugitive** Git integration
- **nerdtree** File tree viewer
- **solarized** Colorscheme
- **YouCompleteMe** Code-Completion
- **autoclose** automatically add closing parantheses and stuff

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

# .vim directory
Vim config repository

### For now includes:
- **[ack](https://github.com/mileszs/ack.vim)** Recursive search
- **[autoclose](https://github.com/Valloric/YouCompleteMe)** automatically add closing parantheses and stuff
- **[flake8](https://github.com/nvie/vim-flake8)** Python static syntax and style checker
- **[fugitive](https://github.com/tpope/vim-fugitive)** Git integration
- **[indentLine](https://github.com/Yggdroot/indentLine)** Indentation markers
- **[lightline](https://github.com/itchyny/lightline.vim)** Minimalistic vim statusline
- **[nerdcommenter](https://github.com/scrooloose/nerdcommenter)** (un-)comment blocks of code
- **[nerdtree](https://github.com/scrooloose/nerdtree)** File tree viewer
- **[solarized](https://github.com/altercation/vim-colors-solarized)** Colorscheme
- **[SuperTab](https://github.com/ervandew/supertab)** Tab magic to make UlttiSnips and YCM work together
- **[Surround](https://github.com/tpope/vim-surround)** handle surrounding braces, qoutes, whatever
- **[syntastic](https://github.com/vim-syntastic/syntastic)** Syntax checking
- **[UltiSnips](https://github.com/SirVer/ultisnips)** Snippets for spontaneous insertion
- **[vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)** Multicursor support
- **[vim-pbrt](https://github.com/Phenylalaninquelle/vim-pbrt)** Syntax highlighting for pbrt scene files
- **[YouCompleteMe](https://github.com/Valloric/YouCompleteMe)** Code-Completion

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

### Notes to self
- Dont set Leader- Combinations with more than one char since all single-char
  combis will have to wait the full second (or so) that Leader waits for
  possible additional input

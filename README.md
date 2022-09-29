# Noctis for Neovim

A neovim port of the Noctis theme for VSCode with TreeSitter support.

<img width="1792" alt="noctis nvim" src="https://user-images.githubusercontent.com/24954962/193131998-90f51940-a307-4af5-a225-01ee94c50991.png">

## Installation

[lush.nvim](https://github.com/rktjmp/lush.nvim) is also needed to use this
colorscheme.

| Plugin Manager                                       | Command                                                                                                                                                         |
| ---------------------------------------------------- | ----------------------------------------------------------------------------------                                                                              |
| [Packer](https://github.com/wbthomason/packer.nvim)  | `use { 'kartikp10/noctis.nvim', requires = 'rktjmp/lush.nvim'`                                                                                                  |
| [Vim-plug](https://github.com/junegunn/vim-plug)     | `Plug 'kartikp10/noctis.nvim' | Plug 'rktjmp/lush.nvim'`                                                                                                        |
| [NeoBundle](https://github.com/Shougo/neobundle.vim) | `NeoBundle 'kartikp10/noctis.nvim', {'depends': 'rktjmp/lush.nvim'}`                                                                                            |
| [Vundle](https://github.com/VundleVim/Vundle.vim)    | `Plugin 'kartikp10/noctis.nvim' | Plug 'rktjmp/lush.nvim'`                                                                                                      |
| [Pathogen](https://github.com/tpope/vim-pathogen)    | `git clone https://github.com/kartikp10/noctis.nvim.git ~/.vim/bundle/noctis.nvim && git clone https://github.com/rktjmp/lush.nvim.git ~/.vim/bundle/lush.nvim` |
| [Dein](https://github.com/Shougo/dein.vim)           | `call dein#add('kartikp10/noctis.nvim') | call dein#add('rktjmp/lush.nvim')`                                                                                    |

## Usage

```viml
syntax on
colorscheme noctis
```

## Supported Plugins

1. TreeSitter
2. Telescope
3. Lualine
4. Bufferline
5. NvimTree
6. GitSigns

## Inspired by

This colorscheme is inspired by the following:
1. [nightfox.nvim](https://github.com/EdenEast/nightfox.nvim) 
2. [noctis-hc](https://github.com/KamenKolev/noctis-hc) 
3. [noctis](https://github.com/liviuschera/noctis)

If you're interested in creating your own theme I highly recommend checking out [lush.nvim](https://github.com/rktjmp/lush.nvim) to get started. It provides real-time feedback and guides you in building structured colorschemes. 

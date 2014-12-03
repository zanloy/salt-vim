# Salt-VIM

This is a salt state module to install [vim](http://www.vim.org/) on a server.

## Download:

To download salt-vim to your salt-master:

```
cd /srv/salt
git clone https://github.com/zanloy/salt-vim.git vim
```

## Usage:

To setup vim, add the following to your top.sls:

```
include:
  - vim
```

To setup vim once, you can run the following command:

```
salt '*' state.sls vim
```

## Sample pillar data:

I hope to expand on this in the future but for now I will demonstration my sample pillar data for this module.

```
vim:
  {% if grains['os_family'] == 'Debian' %}
  config_base_dir: /etc/vim
  {% endif %}
  autocmds:
    - FileType python setlocal shiftwidth=4 tabstop=4 backspace=4
  opts:
    - backspace=2
    - tabstop=2
    - shiftwidth=2
    - expandtab
    - number
    - autoindent
    - foldmethod=indent
    - foldnestmax=10
    - nofoldenable
    - foldlevel=1
    - nocompatible
    - autoindent
    - history=50
    - ruler
    - visualbell
    - wildmenu
    - noerrorbells
    - laststatus=2
    - showcmd
    - showmatch
    - ignorecase
    - smartcase
    - incsearch
    - autowrite
    - hidden
    - viminfo='20,\"500
  maps:
    '<F5>': '<Esc>:w<CR>:!%:p<CR> '
```

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

#!stateconf yaml . jinja

{% set pkg = 'vim-enhanced' if grains['os_family'] == 'RedHat' else 'vim' %}

.vim:
  pkg:
    - name: {{ pkg }}
    - installed

.vimrc:
  file.managed:
    - name: {{ salt['pillar.get']('vim:config_base_dir', '/etc') }}/vimrc
    - template: jinja
    - source: salt://vim/files/vimrc

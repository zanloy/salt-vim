#!stateconf yaml . jinja

.vim:
  pkg:
    - installed

.vimrc:
  file.managed:
    - name: {{ salt['pillar.get']('vim:config_base_dir', '/etc') }}/vimrc
    - template: jinja
    - source: salt://vim/files/vimrc

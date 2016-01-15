function fish_user_key_bindings
  bind \[Z forward-char
end

function fish_prompt
  set_color ff6600 #orange
  echo -n (pwd | sed "s!^$HOME!~!")
 
  set_color 0066ff #light blue
 
  if test -d .git
    echo -n '' (git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1]/")
 
    if [ (git status 2> /dev/null | tail -n1) != 'nothing to commit, working directory clean' ]
      set_color yellow
      echo -n "±"
    end
  end
 
  #don't care
  #echo -n '' (rbenv versions 2> /dev/null | awk '/^\* / { print "(" $2 ")" }    ')
 
  set_color white
  echo
  echo -n '‡ '
 
  set_color normal
end

### PATH ###
set default_path /usr/bin /usr/sbin /bin /sbin ~/.bin /Applications/LibreOffice.app/Contents/MacOS
set homebrew /usr/local/bin /usr/local/sbin
set brew_rbenv /usr/local/Cellar/rbenv/shims
set -gx PATH $homebrew $brew_rbenv $default_path

set -x GOPATH ~/dev/go
set -x RBENV_ROOT /usr/local/Cellar/rbenv/


alias hg='history | grep'
alias gir='grep -ir'
alias be='bundle exec'
alias lal='ls -al'

alias tiga='tig --all'

alias gs='git status'
alias gf='git fetch --all'
alias gco='git checkout'
alias gbr='git branch'
alias glg='git log'
alias gmf='git merge --ff-only'

alias gcp='git cherry-pick'

alias tma='tmux attach -t'

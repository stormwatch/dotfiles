function dotfiles  --description 'git wrapper for dotfiles' --wraps git
  git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv; 
end

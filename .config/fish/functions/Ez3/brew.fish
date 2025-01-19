function brew --description 'Run brew as the main user (not root)' --wraps brew
  set owner (homebrewOwner)
  echo Running brew as its owner $owner.
  sudo --set-home --preserve-env --user=$owner brew $argv
end

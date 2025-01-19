function homebrewOwner
  if not set -q homebrewOwner
    command brew shellenv | source
    set --universal --export homebrewOwner (stat -f "%Su" $HOMEBREW_CELLAR)
  end
  echo $homebrewOwner
end

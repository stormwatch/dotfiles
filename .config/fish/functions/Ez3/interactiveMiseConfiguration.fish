function interactiveMiseConfiguration
  if exists mise
    mise activate fish | source # since we set MISE_FISH_AUTO_ACTIVATE 0
    miseAbbreviations
  end
end

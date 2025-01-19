function completeImagesForSmalltalkNamedInDirectory
  complete --command $argv[1] --exclusive --keep-order --no-files --arguments "(__fish_complete_suffix .image --prefix=$argv[2])"
end

# This file is meant to be sourced at the end of each concrete loader: cuis, cuisuniversity, squeak, etc. 
# Those loaders must set imageDirectory, image, virtualMachine, startUp, and setImageAndStartUp

if which -s brew; then
    export DYLD_LIBRARY_PATH="$(brew --prefix)/lib:${DYLD_LIBRARY_PATH}"
fi

cd "$imageDirectory"
if [[ "$1" == -* ]] || [ -z "$1" ]; then
    setImage
    setStartUp
else
    image="$1"
    shift
fi

echo $virtualMachine $image $@ $startUp
exec "$virtualMachine" "$image" $@ $startUp

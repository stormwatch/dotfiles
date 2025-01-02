| taskbar userInterface |

Transcript log: 'Executing startUp script'.

"The original and the widget versions provide the same name. Make sure you are loading the one you want."
"Feature require: 'PopupFinder'."
"Feature require: 'Tools-Finder'."
"Feature require: 'Keystrokes'."

Utilities setAuthorName: 'Ezequiel Birman' initials: 'Ez3'.

"If we were to ommit this, the taskbar wouldn't exist yet, and therefore the variable taskbar would be nil"
self runningWorld doOneCycleNow.

userInterface := UISupervisor ui.
taskbar := userInterface taskbar.

"Remove all morphs except for the taskbar. We also leave code windows intact in case we are recovering from a crash."
userInterface submorphs
    select: [:morph | (morph isKindOf: CodeWindow) not and: [morph ~= taskbar]]
    thenDo: #delete.

taskbar scaleSmall.

"Should be placed anywhere after #doOneCycleNow to ensure everything is redrawn without artifacts"
Display fullScreenMode: true

Transcript log: 'Finishing the startUp script'

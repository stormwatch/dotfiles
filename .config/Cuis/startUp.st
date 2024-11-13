| taskbar userInterface |

Transcript log: 'Executing startUp script'.

Utilities setAuthorName: 'Ezequiel Birman' initials: 'Ez3'.

"If we were to ommit this, the taskbar wouldn't exist yet, and therefore the variable taskbar would be nil"
self runningWorld doOneCycleNow.

userInterface := UISupervisor ui.
taskbar := userInterface taskbar.

"Remove all morphs except for the taskbar. We also leave ChangeSorterWindow(s) intact in case we are recovering from a crash."
"userInterface submorphs
    select: [:morph | morph class ~= ChangeSorterWindow and: [morph ~= taskbar]]
    thenDo: [:morph | morph delete]."

taskbar scaleSmall.

"Should be placed anywhere after #doOneCycleNow to ensure everything is redrawn without artifacts"
"Display fullScreenMode: true."

Transcript log: 'Finishing the startUp script'.

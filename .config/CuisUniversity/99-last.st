| taskbar userInterface |

"If we were to ommit this, the taskbar wouldn't exist yet, and therefore taskbar would be initialized to nil"
self runningWorld doOneCycleNow.

userInterface := UISupervisor ui.
taskbar := userInterface taskbar.

"Remove all morphs except for the taskbar. We also leave code windows intact in case we are recovering from a crash."
userInterface submorphs
    reject: [ :morph | (morph isKindOf: CodeWindow) or: [ morph = taskbar ]]
    thenDo: #delete.

taskbar scaleSmall.

"Should be placed anywhere after #doOneCycleNow to ensure everything is redrawn without artifacts"
Display fullScreenMode: true.

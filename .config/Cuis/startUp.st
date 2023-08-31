"
Display fullScreenMode: true.
"

| taskbar userInterface area|

Utilities setAuthorName: 'Ezequiel Birman' initials: 'Ez3'.

self runningWorld doOneCycleNow.
userInterface := UISupervisor ui.
taskbar := userInterface taskbar.
userInterface submorphs do: [:morph | morph delete] without: taskbar.
taskbar scale: 1 / 2.



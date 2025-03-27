| taskbar world |

"If we were to ommit this, the taskbar wouldn't exist yet, and therefore taskbar would be initialized to nil"
self runningWorld doOneCycleNow.

world := UISupervisor ui.
taskbar := world taskbar.

"We leave code windows intact in case we are recovering from a crash."
world submorphs
	select: [ :morph | morph visible
		and: [ (morph isKindOf: CodeWindow) not ]
		and: [ morph ~= taskbar ]]
	thenDo: #delete.

taskbar scaleSmall.

"Should be placed anywhere after #doOneCycleNow to ensure everything is redrawn without artifacts"
Display fullScreenMode: true

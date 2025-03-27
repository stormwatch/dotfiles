| currentProject |

currentProject := Project current.

currentProject addDeferredUIMessage: [
  currentProject world submorphs detect: [ :morph | morph isKindOf: PreferenceWizardMorph ] ifFound: [ :wizard | wizard showSqueak ].
  TheWorldMainDockingBar instance closeAllWindows.
  "(FileDirectory default fileExists: 'my.prefs') ifTrue: [ Preferences restorePreferencesFromDisk: 'my.prefs' ]."
  Metacello new
    repository: 'github://LeonMatthes/Autocompletion:master/packages';
    baseline: 'Autocompletion';
    load ]

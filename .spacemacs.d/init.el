;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. "~/.mycontribs/")
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (auto-completion :variables
                      auto-completion-complete-with-key-sequence "jk"
                      auto-completion-enable-help-tooltip t
                      ;; auto-completion-enable-sort-by-usage t
                      auto-completion-enable-snippets-in-popup t
                      ;; auto-completion-idle-delay 0.0
                      auto-completion-use-company-posframe t
                      ;; spacemacs-default-company-backends
                      ;; '((company-semantic company-dabbrev-code company-gtags company-etags company-keywords)
                      ;;   company-files company-capf company-dabbrev)
                      )
     better-defaults
     emacs-lisp
     git
     ;; helm
     (lsp :variables
          lsp-lens-enable t)
     markdown
     multiple-cursors
     (org :variables
          ;; org-enable-bootstrap-support t
          org-appear-trigger 'always
          org-enable-appear-support t
          ;; org-enable-epub-support t
          org-enable-github-support t
          ;; org-enable-hugo-support t
          ;; org-enable-org-journal-support t
          org-enable-reveal-js-support t
          ;; org-enable-roam-protocol t
          ;; org-enable-roam-support t
          org-enable-sticky-header t
          org-enable-transclusion-support t
          org-want-todo-bindings t
          org-enable-valign t
          ;; org-enable-verb-support t
          )
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom
            shell-default-shell 'vterm
            shell-enable-smart-eshell t)
     (spell-checking :variables
                     spell-checking-enable-auto-dictionary t
                     spell-checking-enable-by-default nil
                     ispell-really-aspell t)
     syntax-checking
     (version-control :variables
                      version-control-diff-tool 'diff-hl)
     treemacs
     ;; End of Spacemacs suggested useful layers block.
     (tree-sitter :variables
                  ;; spacemacs-tree-sitter-hl-black-list '(js2-mode rjsx-mode)
                  tree-sitter-fold-enable t)
     ansible
     bibtex
     common-lisp
     (clojure :variables
              ;; clojure-enable-sayid t
              ;; clojure-enable-clj-refactor t
              clojure-enable-fancify-symbols t
              clojure-enable-linters 'clj-kondo)
     ;; Does this layer fail on a brand new spacemacs installation?
     csv
     dap
     (dash
      :variables
      dash-docs-docset-newpath "~/.local/share/Zeal/Zeal/docsets"
      dash-docs-browser-func 'eww)
     (deft
       :variables
       deft-directory "~/Documentos/GTD")
     (docker :variables
             docker-dockerfile-backend 'lsp)
     elixir
     emoji
     erlang
     (ess
      :variables
      julia-mode-enable-ess t
      julia-mode-enable-lsp t
      )
     finance
     floobits
     ;; (geolocation
     ;;  :variables
     ;;  geolocation-enable-automatic-theme-changer t
     ;;  ;; geolocation-enable-location-service t
     ;;  ;; geolocation-enable-weather-forecast t
     ;;  )
     gtags
     prettier
     (haskell
      :variables
      haskell-enable-hindent t
      ;; haskell-process-type 'stack-ghci
      )
     (html
      :variables
      web-fmt-tool 'prettier
      css-enable-lsp t
      less-enable-lsp t
      scss-enable-lsp t
      html-enable-lsp t)
     java
     tide
     import-js
     (javascript
      :variables
      ;; default when using the lsp layer
      javascript-backend 'lsp
      ;; javascript-backend 'tide
      javascript-fmt-tool 'prettier
      javascript-import-tool 'import-js
      ;; to use eslint_d
      javascript-lsp-linter nil
      javascript-repl 'nodejs
      js2-basic-offset 2
      js2-include-node-externs t
      js2-mode-show-strict-warnings nil
      js2-mode-show-parse-errors nil

      ;; as adviced in prettier-eslint_d configuration instructions
      ;; https://gist.github.com/rstacruz/a2361d000a88e49472c4419116edaccf#step-2-enable-node-add-modules-path-in-spacemacs
      node-add-modules-path t)
     (typescript :variables
                 ;; relay on jorgebucaran/nvm. A fisher plugin that installs nvm
                 ;; and prepends ~/.config/nvm/<version>/bin to the PATH
                 ;; environment variable.
                 ;; typescript-backend 'tide
                 ;; tide-tsserver-executable "tsserver"
                 typescript-fmt-tool 'prettier
                 typescript-linter 'eslint
                 typescript-lsp-linter nil
                 )
     (json
      :variables
      js-indent-level 2
      json-fmt-tool 'prettier)
     (julia
      :variables
      julia-mode-enable-lsp t
      julia-mode-enable-ess t
      )
     (latex
      :variables
      latex-enable-auto-fill t
      latex-enable-magic t)
     (lua :variables
          lua-backend 'lsp-emmy
          ;; lua-lsp-emmy-jar-path "~/.emacs.d/EmmyLua-LS-all.jar" ; default path
          ;; lua-lsp-emmy-java-path "java"                         ; default path
          ;; lua-lsp-emmy-enable-file-watchers t
          )                  ; enabled default
     nginx
     pass
     pdf
     ;; php
     plantuml
     (python
      :variables
      python-backend 'lsp
      ;; python-lsp-git-root "/usr/local/src/python/python-language-server"
      python-lsp-server 'pyright
      python-pipenv-activate t
      pyvenv-default-virtual-env-name "/usr/local/venvs/devel"
      ;; python-shell-interpreter "jupyter"
      ;; python-shell-interpreter-args "console --simple-prompt"
      ;; python-shell-interpreter-args ""
      )
     (ipython-notebook :variables ein-backend 'jupyter)
     ;; (ipython-notebook
     ;;   :variables
     ;;   ;; python-shell-interpreter "jupyter"
     ;;   ;; python-shell-interpreter-args "console --simple-prompt"
     ;;   )
     prolog
     react
     ;; (ranger :variables ranger-show-preview t)
     (ruby :variables
           ;; ruby-enable-enh-ruby-mode t
           ruby-insert-encoding-magic-comment nil
           ;; ruby-test-runner 'minitest
           )
     ruby-on-rails
     restclient
     rust
     racket
     scheme
     shadowenv
     (shell-scripts :variables shell-scripts-backend nil)
     (sql :variables sql-capitalize-keywords t)
     systemd
     themes-megapack
     theming
     tmux
     (translate :variables gts-translate-list '(("en" "es")))
     (typography :variables typography-enable-typographic-editing t)
     (unicode-fonts
      :variables
      ;; unicode-fonts-enable-ligatures t ; emacs 28+ required
      unicode-fonts-ligature-modes '(prog-mode))
     vagrant
     (yaml :variables
           yaml-enable-lsp t)
     compleseus
     )


   ;; List of additional packages that will be installed without being wrapped
   ;; in a layer (generally the packages are installed only and should still be
   ;; loaded using load/require/use-package in the user-config section below in
   ;; this file). If you need some configuration for these packages, then
   ;; consider creating a layer. You can also put the configuration in
   ;; `dotspacemacs/user-config'. To use a local version of a package, use the
   ;; `:location' property: '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(
                                      apheleia
                                      (bookmark+ :location (recipe :fetcher github :repo "emacsmirror/bookmark-plus"))
                                      context-coloring
                                      crdt
                                      deadgrep
                                      ;; temporary comment while I figure why eslint_d freezes
                                      ;; eslintd-fix

                                      ;; hyperbole
                                      indium
                                      jedi
                                      jedi-core
                                      mocha-snippets
                                      multicolumn
                                      ob-async
                                      (ob-erlang :location (recipe :fetcher github :repo "B7rian/ob-erlang"))
                                      ob-translate
                                      (org-attach :location built-in)
                                      org-board
                                      org-bookmark-heading
                                      (org-critical-edition :location (recipe
                                                                       :fetcher gitlab
                                                                       :repo "maciaschain/org-critical-edition"))
                                      (org-protocol-capture-html :location (recipe
                                                                            :fetcher github
                                                                            :repo "alphapapa/org-protocol-capture-html"))
                                      ;; (org-multilingual :location "~/.emacs.d/private/local/org-multilingual/")
                                      ;; Trying org-protocol support within my `gtd' private layer.
                                      ;; (org-protocol :location built-in)
                                      org-gcal
                                      org-roam-ui
                                      org-super-agenda
                                      org-web-tools
                                      (ox-extra :location built-in)
                                      pollen-mode
                                      company-pollen
                                      poet-theme
                                      pretty-mode
                                      (prettify-utils :location (recipe :fetcher github :repo "Ilazki/prettify-utils.el"))
                                      ;; pynt
                                      ;; (user-directories :location (recipe :fetcher github :repo "stormwatch/user-directories" :branch "stormwatch" :files ("user-directories/*.el")))
                                      ;; user-directories :location "~/.emacs.d/private/local/user-directories/"
                                      (ox-tufte-latex :location (recipe :fetcher github :repo "tsdye/tufte-org-mode" :files ("ox-tufte-latex.el")))
                                      tidal
                                      (tsi :location (recipe :fetcher github :repo "orzechowskid/tsi.el"))
                                      writefreely
                                      )

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need to
   ;; compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;;
   ;; WARNING: pdumper does not work with Native Compilation, so it's disabled
   ;; regardless of the following setting when native compilation is in effect.
   ;;
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
   ;; (default (format "spacemacs-%s.pdmp" emacs-version))
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 1024 1024)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. Spacelpa is currently in
   ;; experimental state please use only for testing purposes.
   ;; (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official

   ;; Scale factor controls the scaling (size) of the startup banner. Default
   ;; value is `auto' for scaling the logo automatically to fit all buffer
   ;; contents, to a maximum of the full image height and a minimum of 3 line
   ;; heights. If set to a number (int or float) it is used as a constant
   ;; scaling factor for the default logo size.
   dotspacemacs-startup-banner-scale 'auto

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   ;; The exceptional case is `recents-by-project', where list-type must be a
   ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
   ;; number is the project limit and the second the limit on the recent files
   ;; within a project.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Show numbers before the startup list lines. (default t)
   dotspacemacs-show-startup-list-numbers t

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   ;; If non-nil, show file icons for entries and headings on Spacemacs home buffer.
   ;; This has no effect in terminal or if "all-the-icons" package or the font
   ;; is not installed. (default nil)
   dotspacemacs-startup-buffer-show-icons t

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
   ;; *scratch* buffer will be saved and restored automatically.
   dotspacemacs-scratch-buffer-persistent nil

   ;; If non-nil, `kill-buffer' on *scratch* buffer
   ;; will bury it instead of killing.
   dotspacemacs-scratch-buffer-unkillable nil

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(modus-operandi
                         modus-vivendi)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts. The `:size' can be specified as
   ;; a non-negative integer (pixel size), or a floating-point (point size).
   ;; Point size is recommended, because it's device independent. (default 10.0)
   dotspacemacs-default-font '("Input Sans"
                               :size 18.0
                               :weight normal
                               :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose t

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default t) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' to obtain fullscreen
   ;; without external boxes. Also disables the internal border. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes the
   ;; transparency level of a frame background when it's active or selected. Transparency
   ;; can be toggled through `toggle-background-transparency'. (default 90)
   dotspacemacs-background-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Show the scroll bar while scrolling. The auto hide time can be configured
   ;; by setting this variable to a number. (default t)
   dotspacemacs-scroll-bar-while-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but only visual lines are counted. For example, folded lines will not be
   ;; counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers nil

   ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil and `dotspacemacs-activate-smartparens-mode' is also non-nil,
   ;; `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode t

   ;; If non-nil smartparens-mode will be enabled in programming modes.
   ;; (default t)
   dotspacemacs-activate-smartparens-mode t

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis t

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server t

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; If nil then Spacemacs uses default `frame-title-format' to avoid
   ;; performance issues, instead of calculating the frame title by
   ;; `spacemacs/title-prepare' all the time.
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Color highlight trailing whitespace in all prog-mode and text-mode derived
   ;; modes such as c++-mode, python-mode, emacs-lisp, html-mode, rst-mode etc.
   ;; (default t)
   dotspacemacs-show-trailing-whitespace t

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; If non-nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfere with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; Accept SPC as y for prompts if non-nil. (default nil)
   dotspacemacs-use-SPC-as-y nil

   ;; If non-nil shift your number row to match the entered keyboard layout
   ;; (only in insert state). Currently supported keyboard layouts are:
   ;; `qwerty-us', `qwertz-de' and `querty-ca-fr'.
   ;; New layouts can be added in `spacemacs-editing' layer.
   ;; (default nil)
   dotspacemacs-swap-number-row nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs t

   ;; If nil the home buffer shows the full path of agenda items
   ;; and todos. If non-nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil

   ;; If non-nil then byte-compile some of Spacemacs files.
   dotspacemacs-byte-compile nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env)
)

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  ;; (setq org-roam-v2-ack t)
  ;; https://www.reddit.com/r/emacs/comments/aug9in/failed_to_verify_signature_archivecontentssig/
  ;; temporary workaround. Be sure to remove the following as soon as possible.
  ;; (setq package-check-signature nil)

  ;; https://emacs.stackexchange.com/a/44796/9858
  ;; (with-eval-after-load 'company-etags '(progn (add-to-list 'company-etags-modes 'web-mode)))
  ;; (setq company-etags-everywhere '(html-mode web-mode nxml-mode))

  ;; Workaround for emacsclient not setting the default font size
  ;; https://github.com/syl20bnr/spacemacs/issues/10894#issuecomment-397574636
  ;;(add-to-list 'default-frame-alist
  ;;             '(font . "-FBI -Input Sans-normal-normal-normal-*-14-*-*-*-*-0-iso10646-1"))

  (setq theming-modifications
        '((leuven
           (context-coloring-level-0-face :foreground "#333333")
           (context-coloring-level-1-face :foreground "#0000ff")
           (context-coloring-level-2-face :foreground "#6434a3")
           (context-coloring-level-3-face :foreground "#ba36a5")
           (context-coloring-level-4-face :foreground "#d0372d")
           (context-coloring-level-5-face :foreground "#036a07")
           (context-coloring-level-6-face :foreground "#006699")
           (context-coloring-level-7-face :foreground "#006fe0")
           (context-coloring-level-8-face :foreground "#808080"))
          (monokai
           (context-coloring-level-0-face :foreground "#f8f8f2")
           (context-coloring-level-1-face :foreground "#66d9ef")
           (context-coloring-level-2-face :foreground "#a1efe4")
           (context-coloring-level-3-face :foreground "#a6e22e")
           (context-coloring-level-4-face :foreground "#e6db74")
           (context-coloring-level-5-face :foreground "#fd971f")
           (context-coloring-level-6-face :foreground "#f92672")
           (context-coloring-level-7-face :foreground "#fd5ff0")
           (context-coloring-level-8-face :foreground "#ae81ff"))
          (sanityinc-solarized-light
           (context-coloring-level-0-face  :foreground "#839496")
           (context-coloring-level-1-face  :foreground "#268bd2")
           (context-coloring-level-2-face  :foreground "#2aa198")
           (context-coloring-level-3-face  :foreground "#859900")
           (context-coloring-level-4-face  :foreground "#b58900")
           (context-coloring-level-5-face  :foreground "#cb4b16")
           (context-coloring-level-6-face  :foreground "#dc322f")
           (context-coloring-level-7-face  :foreground "#d33682")
           (context-coloring-level-8-face  :foreground "#6c71c4")
           (context-coloring-level-9-face  :foreground "#69b7f0")
           (context-coloring-level-10-face :foreground "#69cabf")
           (context-coloring-level-11-face :foreground "#b4c342")
           (context-coloring-level-12-face :foreground "#deb542")
           (context-coloring-level-13-face :foreground "#f2804f")
           (context-coloring-level-14-face :foreground "#ff6e64")
           (context-coloring-level-15-face :foreground "#f771ac")
           (context-coloring-level-16-face :foreground "#9ea0e5"))
          (sanityinc-solarized-dark
           (context-coloring-level-0-face :foreground "#839496")
           (context-coloring-level-1-face :foreground "#268bd2")
           (context-coloring-level-2-face :foreground "#2aa198")
           (context-coloring-level-3-face :foreground "#859900")
           (context-coloring-level-4-face :foreground "#b58900")
           (context-coloring-level-5-face :foreground "#cb4b16")
           (context-coloring-level-6-face :foreground "#dc322f")
           (context-coloring-level-7-face :foreground "#d33682")
           (context-coloring-level-8-face :foreground "#6c71c4")
           (context-coloring-level-9-face :foreground "#69b7f0")
           (context-coloring-level-10-face :foreground "#69cabf")
           (context-coloring-level-11-face :foreground "#b4c342")
           (context-coloring-level-12-face :foreground "#deb542")
           (context-coloring-level-13-face :foreground "#f2804f")
           (context-coloring-level-14-face :foreground "#ff6e64")
           (context-coloring-level-15-face :foreground "#f771ac")
           (context-coloring-level-16-face :foreground "#9ea0e5"))
          (spacegray
           (context-coloring-level-0-face :foreground "#ffffff")
           (context-coloring-level-1-face :foreground "#89aaeb")
           (context-coloring-level-2-face :foreground "#c189eb")
           (context-coloring-level-3-face :foreground "#bf616a")
           (context-coloring-level-4-face :foreground "#dca432")
           (context-coloring-level-5-face :foreground "#ebcb8b")
           (context-coloring-level-6-face :foreground "#b4eb89")
           (context-coloring-level-7-face :foreground "#89ebca"))
          (tango
           (context-coloring-level-0-face :foreground "#2e3436")
           (context-coloring-level-1-face :foreground "#346604")
           (context-coloring-level-2-face :foreground "#204a87")
           (context-coloring-level-3-face :foreground "#5c3566")
           (context-coloring-level-4-face :foreground "#a40000")
           (context-coloring-level-5-face :foreground "#b35000")
           (context-coloring-level-6-face :foreground "#c4a000")
           (context-coloring-level-7-face :foreground "#8ae234")
           (context-coloring-level-8-face :foreground "#8cc4ff")
           (context-coloring-level-9-face :foreground "#ad7fa8")
           (context-coloring-level-10-face :foreground "#ef2929")
           (context-coloring-level-11-face :foreground "#fcaf3e")
           (context-coloring-level-12-face :foreground "#fce94f"))
          (doom-solarized-light
           (context-coloring-level-0-face :foreground "#839496")
           (context-coloring-level-1-face :foreground "#268bd2")
           (context-coloring-level-2-face :foreground "#2aa198")
           (context-coloring-level-3-face :foreground "#859900")
           (context-coloring-level-4-face :foreground "#b58900")
           (context-coloring-level-5-face :foreground "#cb4b16")
           (context-coloring-level-6-face :foreground "#dc322f")
           (context-coloring-level-7-face :foreground "#d33682")
           (context-coloring-level-8-face :foreground "#6c71c4")
           (context-coloring-level-9-face :foreground "#69b7f0")
           (context-coloring-level-10-face :foreground "#69cabf")
           (context-coloring-level-11-face :foreground "#b4c342")
           (context-coloring-level-12-face :foreground "#deb542")
           (context-coloring-level-13-face :foreground "#f2804f")
           (context-coloring-level-14-face :foreground "#ff6e64")
           (context-coloring-level-15-face :foreground "#f771ac")
           (context-coloring-level-16-face :foreground "#9ea0e5"))
          (doom-solarized-dark
           (context-coloring-level-0-face :foreground "#839496")
           (context-coloring-level-1-face :foreground "#268bd2")
           (context-coloring-level-2-face :foreground "#2aa198")
           (context-coloring-level-3-face :foreground "#859900")
           (context-coloring-level-4-face :foreground "#b58900")
           (context-coloring-level-5-face :foreground "#cb4b16")
           (context-coloring-level-6-face :foreground "#dc322f")
           (context-coloring-level-7-face :foreground "#d33682")
           (context-coloring-level-8-face :foreground "#6c71c4")
           (context-coloring-level-9-face :foreground "#69b7f0")
           (context-coloring-level-10-face :foreground "#69cabf")
           (context-coloring-level-11-face :foreground "#b4c342")
           (context-coloring-level-12-face :foreground "#deb542")
           (context-coloring-level-13-face :foreground "#f2804f")
           (context-coloring-level-14-face :foreground "#ff6e64")
           (context-coloring-level-15-face :foreground "#f771ac")
           (context-coloring-level-16-face :foreground "#9ea0e5"))
          (zenburn
           (context-coloring-level-0-face :foreground "#dcdccc")
           (context-coloring-level-1-face :foreground "#93e0e3")
           (context-coloring-level-2-face :foreground "#bfebbf")
           (context-coloring-level-3-face :foreground "#f0dfaf")
           (context-coloring-level-4-face :foreground "#dfaf8f")
           (context-coloring-level-5-face :foreground "#cc9393")
           (context-coloring-level-6-face :foreground "#dc8cc3")
           (context-coloring-level-7-face :foreground "#94bff3")
           (context-coloring-level-8-face :foreground "#9fc59f")
           (context-coloring-level-9-face :foreground "#d0bf8f")
           (context-coloring-level-10-face :foreground "#dca3a3"))
          (t
           (fixed-pitch :family "Input Sans")
           (fixed-pitch-serif :family "Input Serif")
           (variable-pitch
            ;; :family "Minion Pro"
            ;; :family "EB Garamond 12"
            ;; :family "Cormorant Garamond"
            :family "Alegreya"
            :height 1.4)
           (font-lock-constant-face :inherit fixed-pitch)
           (font-lock-string-face :inherit fixed-pitch-serif :weight semi-light)
           (font-lock-doc-face :inherit font-lock-string-face)
           (font-lock-variable-name-face :inherit font-lock-constant-face)
           (hl-todo :inherit fixed-pitch)

           ;; (ledger-font-auto-xact-face :family "monospace")
           ;; (ledger-font-periodic-xact-face :family "monospace")
           ;; (ledger-font-directive-face :family "monospace")

           (magit-section-highlight :family "monospace")

           ;; (button :family "monospace")
           ;; (org-brain-button :family "monospace")
           ;; (org-brain-wires :family "Input Mono Narrow Liga")
           (org-brain-wires :family "monospace")
           (org-brain-parent :family "monospace")
           (org-brain-child :family "monospace")

           ;; Adpated from https://zzamboni.org/post/beautifying-org-mode-in-emacs/
           (org-indent :inherit (org-hide fixed-pitch))

           ;; with “:height 0.6” `hl-todo' and `org-todo' caps seem to align
           ;; with `virtual-pitch''s x-height, like if they were real small
           ;; caps.
           (org-todo :family "DINPro" :height 0.6)
           (org-done :inherit org-todo)
           (org-drawer :inherit fixed-pitch :height 0.6)
           (org-priority :family "Input Sans Condensed" :height 0.7 :weight normal)
           ;; (org-priority :family "monospace" :height 0.7 :weight normal)
           (line-number :family "Input Mono Condensed")
           (line-number-current-line :inherit line-number)
           (org-link
           :inherit org-table
           :underline t)
           (org-document-info-keyword :inherit fixed-pitch :height 0.6)
           (org-document-info :inherit fixed-pitch-serif :height 0.6)
           (org-block :inherit fixed-pitch :height 0.7)
           (org-column :inherit org-priority :height 0.7)
           (org-code :inherit org-block)
           (org-quote
            :inherit variable-pitch
            :height 0.6
            ;; :slant normal
            )
           ;; (org-verse
           ;; :inherit variable-pitch
           ;; :slant normal
           ;; )
           (org-meta-line :inherit fixed-pitch :height 0.6)
           ;; Suposedly, `org-block-begin-line' and `org-block-end-line' inherit
           ;; from `org-meta-line' but they keep using `org-default' or maybe
           ;; just `default' if not set as per the following lines?
           (org-block-begin-line :inherit org-meta-line)
           (org-block-end-line :inherit org-block-begin-line)
           (org-property-value :inherit fixed-pitch-serif :height 0.6)
           (org-date :inherit fixed-pitch-serif :height 0.6)
           ;; (org-kbd :inherit fixed-pitch-serif)
           (org-special-keyword :inherit fixed-pitch :height 0.6)
           (org-tag :inherit fixed-pitch :height 0.6)
           ;; (org-table :family monospaced :height 0.8)
           ;; (org-table :family "Input Mono Narrow Liga" :height 0.8)
           (org-verbatim :inherit org-block)
           ;; (org-formula :inherit org-table)
           ;; (table-cell :inherit org-table)

           (verb-code-tag :inherit font-lock-string-face :height 0.7)
           (verb-header :inherit verb-http-keyword)
           (verb-http-keyword :inherit font-lock-constant-face :height 0.7)
           )))
  )

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
)


(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  (with-eval-after-load 'org
    (setq org-default-notes-file (concat org-directory "/inbox.org"))
    (spacemacs|use-package-add-hook org
      :post-config
      ;; This was working berfore but now freezes when opening org files with js source blocks. It is eslint_d's fault. lets try again.
      (nconc org-src-lang-modes '(("js" . js2)))
      ;; (nconc org-babel-load-languages
      ;;        '((ditaa . t)
      ;;          (erlang . t)
      ;;          (latex . t)
      ;;          (lilypond . t)
      ;;          (lisp . t)
      ;;          (org . t)))

      ;; (setenv "NODE_PATH"
      ;;         (concat
      ;;          "/usr/local/src/emacs/org/babel_local/node_modules" ":"
      ;;          (getenv "NODE_PATH")
      ;;          ))
      )
    (use-package org
      :defer t
      :config
      (org-expiry-insinuate)
      :custom
      ;; The contents of "agenda files" may contain a single `.' in order to
      ;; include all of `org-directory' contents matching
      ;; `org-agenda-file-regexp'.
      (org-agenda-files (concat org-directory "/agenda files"))
      (org-refile-targets
       '((nil :maxlevel . 9)
         (org-agenda-files :maxlevel . 9)
         (org-agenda-diary-file :maxlevel . 2)
         ("~/Documentos/Birman Ezequiel/poemas/bocetos.org" :maxlevel . 2)))
      (org-todo-keywords '((sequence "TODO(t)" "WAIT(w)" "|" "DONE(d)" "CANCELLED(c)")))
      (org-startup-indented t)
      (org-expiry-inactive-timestamps t)
      :hook (org-export-before-parsing . (lambda (x) (org-update-all-dblocks)))
      )
    (use-package org-bookmark-heading
      :defer t
      :after org
      :config (setq org-bookmark-jump-indirect t))
    (use-package org-faces
      :defer t
      :custom
      (org-fontify-quote-and-verse-blocks t))
    (use-package org-attach
      :defer t
      :custom
      (org-attach-directory "~/Antiquæ Novæ/personas")
      (org-attach-git-commit nil))
    ;; (use-package org-board
    ;;   :defer t
    ;;   :config
    ;;   (progn
    ;;     (defun do-org-board-dl-hook ()
    ;;       (when (equal (buffer-name)
    ;;                    (concat "CAPTURE-" org-board-capture-file))
    ;;         (org-board-archive)))
    ;;     (add-hook 'org-capture-before-finalize-hook 'do-org-board-dl-hook)
    ;;     (with-eval-after-load 'org-capture
    ;;       (defvar org-board-capture-file "my-org-board.org" "Default org-board file for captures")
    ;;       (push `("c" "capture through org protocol" entry
    ;;               (file+headline ,org-board-capture-file "Unsorted")
    ;;               "* %?%:description\n:PROPERTIES:\n:URL: %:link\n:END:\n\n Added %U") org-capture-templates))
    ;;     (global-set-key (kbd "C-c o") org-board-keymap)))
    ;; (use-package ob-js
    ;;   :defer t
    ;;   :init (setq org-babel-js-cmd "indium")
    ;;   )
    (use-package org-capture
      :defer t
      :init
      (setq org-capture-templates
            `(("t" "todo [inbox]" entry (file "")
               "* TODO %?\n%U\n%a\n" :clock-in t :clock-resume t)
              ("T" "Tickler" entry
               (file "tickler.org")
               "* %i%? \n %U")
              ("h" "habit" table-line (file+header "gtd" "Registro Conductual"))
              ("r" "respond" entry (file "")
               "* NEXT Respond to %:from on %:subject\nSCHEDULED: %t\n%U\n%a\n" :clock-in t :clock-resume t :immediate-finish t)
              ("n" "note" entry (file "")
               "* %? :NOTE:\n%U\n%a\n" :clock-in t :clock-resume t)
              ("j" "Journal" entry (file+olp+datetree ,(concat org-directory "/diary.org"))
               "* %?\n%U\n" :clock-in t :clock-resume t)
              ("P" "org-protocol" entry (file "")
               "* TODO Review %c\n%U\n" :immediate-finish t)

              ;; From https://github.com/alphapapa/org-protocol-capture-html
              ;; “You need a suitable org-capture template. I recommend this one.
              ;; Whatever you choose, the default selection key is w, so if you
              ;; want to use a different key, you’ll need to modify the script and
              ;; the bookmarklets.”
              ("w" "Web site" entry
               (file "")
               "* %a :website:\n\n%U %?\n\n%:initial")

              ("m" "Meeting" entry (file "")
               "* MEETING with %? :MEETING:\n%U" :clock-in t :clock-resume t)
              ("C" "Phone call" entry (file "")
               "* PHONE %? :PHONE:\n%U" :clock-in t :clock-resume t)
              ("h" "Habit" entry (file "")
               "* NEXT %?\n%U\n%a\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a .+1d/3d>>\")\n:PROPERTIES:\n:STYLE: habit\n:REPEAT_TO_STATE: NEXT\n:END:\n")

              ;; From
              ;; https://github.com/sprig/org-capture-extension#set-up-handlers-in-emacs
              ;; “The L template above would break for links to pages having [
              ;; and ] characters in their page titles - notably ArXiv. To
              ;; mitigate this, you can use the improved template, contributed by
              ;; Vincent Picaud:”. `transform-square-brackets-to-round-ones' is
              ;; defined in funcs.el
              ("p" "Protocol" entry (file+headline ,(concat org-directory "/notes.org") "Inbox")
               "* %^{Title}\nSource: %u, %c\n #+BEGIN_QUOTE\n%i\n#+END_QUOTE\n\n\n%?")
              ("L" "Protocol Link" entry (file+headline ,(concat org-directory "/notes.org") "Inbox")
               "* %? [[%:link][%(gtd//transform-square-brackets-to-round-ones \"%:description\")]]\n")
              )))

    (use-package org-download
      :defer t
      :custom
      (org-download-method 'attach)
      (org-download-image-dir "~/Imágenes"))
    (use-package org-habit
      :defer t
      :after org
      ;; :config
      ;; (progn
      ;; (org-habit-graph-column 50)
      ;; (org-habit-preceding-days 7)))
      )
    (use-package org-gcal
      :defer t
      :custom
      (org-gcal-client-id "61255370864-4dfg5nbapa6cntpeco9phu0go352gsst.apps.googleusercontent.com")
      (org-gcal-client-secret "changeme")
      (org-gcal-fetch-file-alist `(,user-mail-address . org-default-notes-file)))
    (use-package org-journal
      :defer t
      :custom
      (org-journal-date-format "%F, %A"))
    (use-package org-protocol
      :defer t
      :after server
      :commands (org-protocol-capture org-protocol-create)
      :init
      (progn
        (spacemacs/set-leader-keys-for-major-mode 'org-mode
          "mp" 'org-protocol-capture)))
    (use-package org-protocol-capture-html
      :defer t)
    (use-package org-roam
      :defer t
      :init
      (setq
       org-roam-v2-ack t
       org-roam-directory (concat org-directory "/roam"))
      :config
      (global-page-break-lines-mode -1)
      :custom
      ;; (org-roam-directory (concat org-directory "/roam"))
      (org-roam-completion-everywhere t)
      (org-roam-capture-templates
       '(("d" "default" plain "%?"
          :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org"
                             "#+title: ${title}\n")
          :unnarrowed t)))
      )
    (use-package org-roam-ui
      :defer t
      :after org-roam
      ;; :config
      ;; (setq org-roam-ui-sync-theme t
      ;;         org-roam-ui-follow t
      ;;         org-roam-ui-update-on-save t
      ;;         org-roam-ui-open-on-start t)
      ;; :hook (after-init . org-roam-ui-mode)
      )
    (use-package org-super-agenda
      :defer t
      :config
      (org-super-agenda-mode)
      :custom
      (org-super-agenda-groups '((:auto-category t))))
    (use-package org-web-tools
      :defer t)
    (use-package ox
      :defer t
      :custom
      (org-export-with-date nil))
    (use-package ox-html
      :defer t
      :custom
      (org-html-html5-fancy t))
    (use-package ox-latex
      :defer t
      :config
      (nconc org-latex-classes
             '(("koma-article"
                "\\documentclass{scrartcl}"
                ("\\section{%s}" . "\\section*{%s}")
                ("\\subsection{%s}" . "\\subsection*{%s}")
                ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                ("\\paragraph{%s}" . "\\paragraph*{%s}")
                ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))

               ;; The following (including comments) was copied from
               ;; https://github.com/dangom/org-thesis/blob/074c653187a8e788d7d07e77add0e8bdb37f49b3/org-init.el#L295
               ("mimore"
                "\\documentclass{mimore}
 [NO-DEFAULT-PACKAGES]
 [PACKAGES]
 [EXTRA]"
                ("\\section{%s}" . "\\section*{%s}")
                ("\\subsection{%s}" . "\\subsection*{%s}")
                ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                ("\\paragraph{%s}" . "\\paragraph*{%s}")
                ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))

               ;; Mimosis is a class I used to write my Ph.D. thesis.
               ("mimosis"
                "\\documentclass{mimosis}
 [NO-DEFAULT-PACKAGES]
 [PACKAGES]
 [EXTRA]
\\newcommand{\\mboxparagraph}[1]{\\paragraph{#1}\\mbox{}\\\\}
\\newcommand{\\mboxsubparagraph}[1]{\\subparagraph{#1}\\mbox{}\\\\}"
                ("\\chapter{%s}" . "\\chapter*{%s}")
                ("\\section{%s}" . "\\section*{%s}")
                ("\\subsection{%s}" . "\\subsection*{%s}")
                ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                ("\\mboxparagraph{%s}" . "\\mboxparagraph*{%s}")
                ("\\mboxsubparagraph{%s}" . "\\mboxsubparagraph*{%s}"))

               ;; Elsarticle is Elsevier class for publications.
               ("elsarticle"
                "\\documentclass{elsarticle}
 [NO-DEFAULT-PACKAGES]
 [PACKAGES]
 [EXTRA]"
                ("\\section{%s}" . "\\section*{%s}")
                ("\\subsection{%s}" . "\\subsection*{%s}")
                ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                ("\\paragraph{%s}" . "\\paragraph*{%s}")
                ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))

               ;; from
               ;; https://github.com/tsdye/tufte-org-mode/blob/215cffc9d75c549e98a0ad3536adecae511d594b/tufte-latex.org#913-tufte-handout-class
               ("tufte-handout"
                "\\documentclass{tufte-handout}"
                ;;   [NO-DEFAULT-PACKAGES]"
                ("\\section{%s}" . "\\section*{%s}")
                ("\\subsection{%s}" . "\\subsection*{%s}"))

               ;; from
               ;; https://github.com/tsdye/tufte-org-mode/blob/215cffc9d75c549e98a0ad3536adecae511d594b/tufte-latex.org#914-tufte-book-class
               ("tufte-book"
                "\\documentclass[twoside,nobib]{tufte-book}"
                ;; [NO-DEFAULT-PACKAGES]"
                ("\\part{%s}" . "\\part*{%s}")
                ("\\chapter{%s}" . "\\chapter*{%s}")
                ("\\section{%s}" . "\\section*{%s}")
                ("\\subsection{%s}" . "\\subsection*{%s}")
                ("\\paragraph{%s}" . "\\paragraph*{%s}"))))
      :custom
      ;; auctexlatexmk.el says to set `$pdf_mode = 1' in latexmkrc but I have
      ;; `$pdf_mode = 4' in /etc/latexmk.conf which according to latexmk docs
      ;; means tu use lualatex by default and it seems to work too. I also must
      ;; change the default value of `TeX-engine' from default to luatex.
      (org-latex-compiler "lualatex")))

  (setq prettify-symbols-unprettify-at-point t)
  (global-prettify-symbols-mode +1)
  ;; https://github.com/syl20bnr/spacemacs/issues/11640#issuecomment-442759171
  ;; (ido-mode -1)
  (spacemacs/toggle-evil-safe-lisp-structural-editing-on-register-hooks)

  ;; auto-format different source code files extremely intelligently
  ;; https://github.com/radian-software/apheleia
  ;; (use-package apheleia
  ;;   :ensure t
  ;;   :config
  ;;   (apheleia-global-mode +1))

  (use-package bookmark+
    :ensure t)
  ;; (use-package company-box
  ;;   :hook (company-mode . company-box-mode))
  ;; (use-package user-directories
  ;;  :defer t
  ;;  :load-path "~/.emacs.d/private/local/user-directories/user-directories"
  ;;  :init (load-library "setup-user-directories")
  ;;  )
  ;; (spacemacs|use-package-add-hook css-mode
  ;;   :post-config
  ;;   (add-hook 'css-mode-hook #'lsp))
  (use-package auto-revert-mode
    :defer t
    :hook doc-view-mode)
  (use-package citar
    :defer t
    ;; :bind (("C-c b" . citar-insert-citation)
    ;;        :map minibuffer-local-map
    ;;        ("M-b" . citar-insert-preset))
    :custom
    (citar-bibliography '("~/bib/references.bib"))
    (org-cite-global-bibliography '("~/bib/references.bib"))
    (org-cite-insert-processor 'citar)
    (org-cite-follow-processor 'citar)
    (org-cite-activate-processor 'citar)
    :config
    ;; use consult-completing-read for enhanced interface
    (advice-add #'completing-read-multiple :override #'consult-completing-read-multiple))
  (use-package dap-python
    :defer t
    :custom
    (dap-python-debugger 'debugpy))
  (use-package files
    :defer t
    :custom
    (safe-local-variable-values
     '((rspec-docker-cwd . "/jobvacancy/")
       (rspec-use-docker-when-possible . t)
       (feature-docker-compose-container . "webapp")
       (rubocopfmt-use-bundler-when-possible)
       ;; (rubocop-prefer-system-executable . t)
       (ruby-test-runner . 'minitest)
       (ruby-test-runner . 'ruby-test)
       (ruby-test-runner . 'rspec)
       (typescript-backend . tide)
       (typescript-backend . lsp)
       (javascript-backend . tide)
       (javascript-backend . tern)
       (javascript-backend . lsp))))
  (use-package lsp
    :defer t
    ;; :hook ((
    ;; css-mode
    ;; erlang-mode
    ;; Throws error
    ;; json-mode
    ;; latex-mode
    ;; )
    ;; lsp)
    :custom
    (dap-firefox-debug-program `("node"
                                 ,(f-join dap-firefox-debug-path
                                          "dist/adapter.bundle.js")))
    (lsp-eslint-package-manager 'pnpm)
    ;; (lsp-eslint-server-command
    ;;  `("node"
    ;;    ,(expand-file-name (first (file-expand-wildcards "~/.vscode-insiders/extensions/dbaeumer.vscode-eslint-*/server/out/eslintServer.js")))
    ;;    "--stdio"))
    )
  ;; (use-package lsp-steep
  ;;   :defer t
  ;;   :custom
  ;;   (lsp-steep-use-bundler nil))
  ;; (use-package company-lsp
  ;;   :defer t
  ;;   :config
  ;;   (add-to-list 'company-lsp-filter-candidates '(lsp-emmy-lua . t))
  ;;   (nconc company-lsp-filter-candidates
  ;;          '((lsp-emmy-lua. t)))
  ;;   )
  (use-package css-mode
    :defer t
    :custom
    (css-indent-offset 2))
  (use-package docker-tramp
    :defer t
    :custom
    (docker-tramp-docker-executable "podman"))
  (use-package doom-themes
    :defer t
    :config
    (progn
      (doom-themes-treemacs-config)
      (doom-themes-org-config)))

  (use-package ein
    :defer t
    :custom
    (ein:polymode))

  ;; (use-package eslintd-fix
  ;;   :hook
  ;;   (js2-mode eslintd-fix-mode))

  (use-package context-coloring
    :defer t
    ;; :hook ((js2-mode emacs-lisp-mode eval-expression-minibuffer-setup) . context-coloring-mode)
    )
  (use-package erlang
    :defer t
    :custom
    (erlang-indent-level 2))
  (use-package face-remap
    :defer t
    :hook
    (text-mode . variable-pitch-mode))

  (use-package flycheck
    :defer t
    :custom
    (flycheck-javascript-eslint-executable "eslint_d"))

  ;; (use-package pretty-mode
  ;;   :config
  ;;   (progn
  ;;     (global-pretty-mode t)
  ;;     (pretty-deactivate-groups
  ;;      '(:equality :ordering :ordering-double :ordering-triple
  ;;                  :arrows :arrows-twoheaded :punctuation
  ;;                  :logic :sets
  ;;                  ;; :nil
  ;;                  ))
  ;;     (pretty-activate-groups
  ;;      '(:greek))))
  (use-package prettify-utils)
  (use-package geolocation
    :defer t
    :custom
    (calendar-location-name "Buenos Aires, Argentina")
    (calendar-latitude -34.64)
    (calendar-longitude -58.36))
  (use-package indium
    :defer t
    :custom (indium-chrome-executable "/usr/bin/google-chrome-unstable")
    )
  ;; (use-package indium-interaction
  ;;   :after (:any js-mode js2-mode)
  ;;   :hook ((js-mode js2-mode) . indium-interaction-mode))
  ;; (use-package smart-tabs-mode
  ;;   :defer t
  ;;   :config (smart-tabs-insinuate 'c 'c++ 'java 'javascript 'cperl 'python 'ruby 'nxml)
  ;;   :custom (indent-tabs-mode t))
  ;; (use-package nodejs-repl
  ;;   :defer t
  ;;   :custom (nodejs-repl-arguments "--experimental-modules"))
  (use-package inf-ruby
    :defer t
    :custom (inf-ruby-default-implementation "pry"))
  (use-package rspec-mode
    :defer t
    ;; :custom
    ;; (rspec-spec-command "dip rspec")
    ;; (rspec-use-bundler-when-possible nil)
    :config
    (rspec-install-snippets))
  ;; (use-package rubocop
  ;;   :defer t
  ;;   :custom (rubocop-prefer-system-executable t))
  ;; (use-package rubocopfmt
  ;;   :defer t
  ;;   :custom (rubocopfmt-use-bundler-when-possible nil))

  ;; https://github.com/orzechowskid/tsi.el/
  ;; great tree-sitter-based indentation for typescript/tsx, css, json
  (use-package tsi
    :after tree-sitter
    ;; define autoload definitions which when actually invoked will cause package to be loaded
    :commands (tsi-typescript-mode tsi-json-mode tsi-css-mode)
    :init
    (add-hook 'typescript-mode-hook (lambda () (tsi-typescript-mode 1)))
    (add-hook 'json-mode-hook (lambda () (tsi-json-mode 1)))
    (add-hook 'css-mode-hook (lambda () (tsi-css-mode 1)))
    (add-hook 'scss-mode-hook (lambda () (tsi-scss-mode 1))))

  (use-package typescript-mode
    :after tree-sitter
    :config
    ;; we choose this instead of tsx-mode so that eglot can automatically figure out language for server
    ;; see https://github.com/joaotavora/eglot/issues/624 and https://github.com/joaotavora/eglot#handling-quirky-servers
    (define-derived-mode typescriptreact-mode typescript-mode
      "TypeScript TSX")

    ;; use our derived mode for tsx files
    (add-to-list 'auto-mode-alist '("\\.tsx?\\'" . typescriptreact-mode))
    ;; by default, typescript-mode is mapped to the treesitter typescript parser
    ;; use our derived mode to map both .tsx AND .ts -> typescriptreact-mode -> treesitter tsx
    (add-to-list 'tree-sitter-major-mode-language-alist '(typescriptreact-mode . tsx)))
  (use-package solarized
    :defer t
    :custom (solarized-use-variable-pitch t))
  (use-package TeX
    :defer t
    :custom (TeX-engine 'luatex))
  (use-package tidal
    :defer t
    :custom (tidal-interpreter "stack ghci --package tidal"))
  (use-package web-mode
    :defer t
    :hook (web-mode . add-node-modules-path)
    :custom
    (css-indent-offset 2)
    (web-mode-markup-indent-offset 2)
    (web-mode-css-indent-offset 2)
    (web-mode-code-indent-offset 2)
    (web-mode-attr-indent-offset 2)
    :custom-face
    (web-mode-html-tag-face ((t (:inherit fixed-pitch-serif)))))
  ;; (use-package rjsx-mode
  ;;   :defer t
  ;;   :custom-face
  ;;   (rjsx-tag ((t
  ;;               ;; (:inherit font-lock-function-name-face fixed-pitch-serif)
  ;;               (:inherit web-mode-html-tag-face)
  ;;               ))))
  (use-package writefreely
    :after org
    :defer t
    ;; Authentification token, if wanted.
    ;; Alternatively (setq writefreely-auth-token "00000000-0000-0000-0000-000000000000")
    ;; :config (load-library "writefreely-auth-token.el.gpg")
    :custom
    (writefreely-maybe-publish-created-date t)
    (writefreely-auth-token "31f9e1db-4632-4e3b-522d-9b32bb8e4e26"))
  ;; (use-package yasnippet-snippets
  ;;  :defer t
  ;;  :config
  ;;  (yasnippet-snippets-initialize))
  (add-hook 'ein:connect-mode-hook 'ein:jedi-setup)
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.

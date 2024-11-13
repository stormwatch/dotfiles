;;; config.el -*- lexical-binding: t; -*-

;; Copyright (C) 2022-2024 Abdelhak Bougouffa

;; Personal info
(setq user-full-name "Ezequiel Birman"
  user-mail-address "ebirman77@gmail.com")

;; Set the default GPG key ID, see "gpg --list-secret-keys"
;; (setq-default epa-file-encrypt-to '("XXXX"))

(setq modus-themes-italic-constructs t
  modus-themes-variable-pitch-ui t
  minemacs-theme 'modus-operandi)

(plist-put minemacs-fonts-plist
  :default
  '((:family "Input Sans" :height 130)
    (:family "Iosevka Fixed Curly Slab" :height 130)
    (:family "JetBrains Mono" :height 110 :weight light)
    (:family "Cascadia Code" :height 120 :weight semi-light)))

(plist-put minemacs-fonts-plist
  :variable-pitch
  '("Alegreya"
     "Lato"
     "Roboto"
     "Inter"
     "Helvetica"))

;; For example to set custom font for `mode-line' -> `:mode-line':
(plist-put minemacs-fonts-plist
  :mode-line ;; <- applies to the `mode-line' face using `custom-theme-set-faces'
  '((:family "Lato" :weight regular)
    (:family "Roboto" :weight light)))

(plist-put minemacs-fonts-plist
  :mode-line-inactive ;; <- applies to the `mode-line-inactive'
  '((:family "Lato" :weight regular)
    (:family "Roboto" :weight light)))

;; You can also setup some language-specific fonts. For example, to use "Amiri"
;; or "KacstOne" for Arabic script (the first to be found). All scripts
;; supported by Emacs can be found in `+known-scripts'. The value of the extra
;; `:prepend' is passed the last argument to `set-fontset-font'. The extra
;; `:scale' parameter can be used to set a scaling factor for the font in Emacs'
;; `face-font-rescale-alist'.
(plist-put minemacs-fonts-plist
  :arabic ;; <- applies to arabic script using `set-fontset-font'
  '((:family "Amiri" :scale 0.9)
    (:family "KacstOne")))

;; Use "LXGW WenKai Mono" for Han (Chinese) script
(plist-put minemacs-fonts-plist
  :han
  '((:family "LXGW WenKai Mono" :scale 1.3)))

;; When `me-daemon' and `me-email' are enabled, MinEmacs will try to start
;; `mu4e' in background at startup. To disable this behavior, you can set
;; `+mu4e-auto-start' to nil here.
;; (setq +mu4e-auto-start nil)

(+deferred!
  ;; Auto enable Eglot in modes `+eglot-auto-enable-modes' using
  ;; `+eglot-auto-enable' (from the `me-prog' module). You can use
  ;; `+lsp-auto-enable' instead to automatically enable LSP mode in supported
  ;; modes (from the `me-lsp' module).
  ;;(+eglot-auto-enable)

    ;; (add-to-list '+eglot-auto-enable-modes 'ruby-mode)
    ;; (add-to-list '+eglot-auto-enable-modes 'ruby-ts-mode)

    ;; ;; (add-to-list 'eglot-server-programs
    ;;                    '((ruby-mode)
    ;;                      . ("solargraph" "stdio" :initializationOptions
    ;;                         (:diagnostics t))))

    ;;(with-eval-after-load 'eglot
    ;; When trying out robe mode we don't auto-enable eglot for Ruby
    ;; (+eglot-use-on-all-supported-modes
    ;;   (cl-remove-if (lambda (elt)
    ;;                   (equal (car elt) '(ruby-mode ruby-ts-mode))) eglot-server-programs))

  (with-eval-after-load 'eglot
    ;; (setq eglot-stay-out-of '(flymake))
    ;; (push '((ruby-mode ruby-ts-mode) . ("ruby-lsp" :initializationOptions (:diagnostics t))) eglot-server-programs)
    ;; (push '((ruby-mode ruby-ts-mode) . ("bundle" "exec" "rubocop" "--lsp" :initializationOptions (:diagnostics t))) eglot-server-programs)

    ;; workaround. TODO look in github for the reference
    ;; (defun disable-eglot-format-check (f &rest args)
    ;;   (cl-letf (((symbol-function 'eglot--server-capable) #'identity))
    ;;     (apply f args)))
    ;; (advice-add #'eglot-format :around #'disable-eglot-format-check)

    (+eglot-use-on-all-supported-modes eglot-server-programs)))

(setq parinfer-rust-library (concat user-emacs-directory "parinfer-rust/libparinfer_rust.dylib"))

;; Unfortunately I don't know how to tell brew to keep Emacs sources; I don't
;; think it is even possible at the moment.
;; (setq source-directory "~/Sources/emacs-git/")

(setq browse-url-chrome-program (or (executable-find "brave") (executable-find "chromium")))

;;;; Third-party packages

(use-package robe
  :straight t
  :config
  (satch-add-hook '(ruby-mode-hook ruby-ts-mode-hook)
   (lambda () (add-hook 'completion-at-point-functions (cape-company-to-capf #'company-robe) nil t)))
  :hook (ruby-mode ruby-ts-mode))

;; ;; Ni idea si esto anda. Por ahora modifico me-completion.el
;; (with-eval-after-load 'inf-ruby
;;   (advice-add 'inf-ruby-completion-at-point :around #'cape-wrap-nonexclusive))

(use-package minitest
  :straight t
  :hook (ruby-mode ruby-ts-mode))

(use-package rspec-mode
  :straight t
  :hook ((ruby-mode ruby-ts-mode) . rspec-mode))

(use-package seeing-is-believing
  :straight t
  :hook ((ruby-mode ruby-ts-mode) . seeing-is-believing))

;;; TODO: look for use-feature as an alternative to multiple calls to `use-package' (see modules/me-prog.e).
;; (use-package devdocs
;;   :straight (:host github :repo "astoff/devdocs.el" :files ("*.el"))
;;   :commands devdocs-install)

(use-package devil
  :straight t)

;;; Themes
(use-package ef-themes
  :straight t)

(use-package nimbus
  :straight (:host github :repo "mrcnski/nimbus-theme" :files ("*.el")))

(use-package os1-theme
  :straight (:host github :repo "sashimacs/os1-theme" :files ("*.el")))

;; A Flymake backend for Javascript using eslint
;; https://github.com/orzechowskid/flymake-eslint/issues/23#issuecomment-1675481378
;; `executable-find` modification only tries to enable flymake-eslint mode if
;; the `eslint` is found
;; (use-package flymake-eslint
;;   :straight t
;;   :hook
;;   (eglot-managed-mode
;;    . (lambda ()
;;        (when (and (or (derived-mode-p 'web-mode)
;;                       (derived-mode-p 'js-mode))
;;                   (executable-find "eslint"))
;;          (flymake-eslint-enable)))))

;;; Attribution: https://github.com/hmanhng/.minemacs.d

;;; Shell
(use-package bash-ts-mode
  :hook (bash-ts-mode . eglot-ensure)
  :init
  (add-to-list 'major-mode-remap-alist '(sh-mode . bash-ts-mode)))
(use-package fish-mode
  :straight t
  :mode "\\.fish\\'")

;;; LaTeX
(use-package tex
  :custom
  (TeX-engine-alist '((default
                        "Tectonic"
                        "tectonic -X compile -f plain %T"
                        "tectonic -X compile -Z shell-escape -Z continue-on-errors %T"
                        nil)))
  (LaTeX-command-style '(("" "%(latex)")))
  (TeX-process-asynchronous t)
  (TeX-check-TeX nil)
  (TeX-engine 'default)
  :config
  ;; (add-to-list 'TeX-view-program-selection '(output-pdf "Zathura"))
  (let ((tex-list (assoc "TeX" TeX-command-list))
        (latex-list (assoc "LaTeX" TeX-command-list)))
    (setf (cadr tex-list) "%(tex)"
      (cadr latex-list) "%l")))

;;; Org
;; Org LaTeX
(with-eval-after-load 'ox-latex
  (setq org-latex-compiler "lualatex"))
;; (setq org-preview-latex-default-process 'dvisvgm)

;; (with-eval-after-load 'org
;;   (push '("\\.pdf\\'" . "zathura %s") org-file-apps))

(defun org-open-file-pdf ()
  "Open file with `org-open-file' if the PDF exists."
  (interactive)
  (when (eq major-mode 'org-mode)
    (let* ((org-file (buffer-file-name))
           (pdf-file (concat (file-name-sans-extension org-file) ".pdf")))
      (when (file-exists-p pdf-file)
        (org-open-file pdf-file)))))

;; Module: `me-tools' -- Package: `vterm'
;; When the libvterm present in the system is too old, you can face VTERM_COLOR
;; related compilation errors. Thil parameter tells `vterm' to download libvterm
;; for you, see the FAQ at: github.com/akermu/emacs-libvterm.
;; (with-eval-after-load 'vterm
;;   (setq vterm-module-cmake-args "-DUSE_SYSTEM_LIBVTERM=Off"))

;; Module: `me-natural-langs' -- Package: `jinx'
(with-eval-after-load 'jinx
  (setq-default jinx-languages "de en es fr it"))

;;; End of code stolen from https://github.com/hmanhng/.minemacs.d

;;  reversible directory-local environment variable manipulations
(use-package shadowenv
  :straight t
  :hook (after-init . shadowenv-global-mode))

;; Module: `me-org' -- Package: `org'
(with-eval-after-load 'org
  ;; Set Org-mode directory
  (setq org-directory "~/Org/" ; let's put files here
    org-default-notes-file (concat org-directory "inbox.org"))
  ;; Customize Org stuff
  ;; (setq org-todo-keywords
  ;;       '((sequence "IDEA(i)" "TODO(t)" "NEXT(n)" "PROJ(p)" "STRT(s)" "WAIT(w)" "HOLD(h)" "|" "DONE(d)" "KILL(k)")
  ;;         (sequence "[ ](T)" "[-](S)" "|" "[X](D)")
  ;;         (sequence "|" "OKAY(o)" "YES(y)" "NO(n)")))

  (setq org-export-headline-levels 5)

  ;; Your Org files to include in the agenda
  (setq org-agenda-files
    (mapcar
      (lambda (f) (concat org-directory f))
      '("inbox.org"
         "agenda.org"
         "projects.org"))))

;;; Dape + Docker
;; Dape + Docker + rdbg https://github.com/svaante/dape/wiki#ruby---rdbg
(with-eval-after-load 'dape
  (add-to-list 'dape-configs
             `(rdbg-attach-local-source
               prefix-local "~/code/ruby-app/"
               prefix-remote "/app/"
               port 5678
               :request "attach"
                :localfs t)))

;; Dape + Docker + RSpec
(with-eval-after-load 'rspec-mode
  (defun jjh/rspec--compose-default-wrapper (_compose compose-service command)
    "Function for wrapping a command for execution inside a compose
environment. By adding the port manually here, we keep it out of the
rails service - keeping it free for just rspec. We also name it so
it's easy to find."
    (format "docker-compose -f %s run -it --rm --name ruby-app-rspec -e 'RUBY_DEBUG_PORT=5680' -p 5680:5680 %s sh -c \"%s\""
      rspec-docker-file-name compose-service command))
  (setq rspec-docker-wrapper-fn #'jjh/rspec--compose-default-wrapper))

;; Module: `me-notes' -- Package: `denote'
(with-eval-after-load 'denote
  (setq denote-directory "~/Org/notes/"))

;; https://github.com/tree-sitter/tree-sitter-javascript/issues/294 and more
;; generally https://github.com/tree-sitter/tree-sitter/discussions/1768

;; (with-eval-after-load 'treesit
;;   (setq treesit-language-source-alist
;;      '((tsx        "https://github.com/tree-sitter/tree-sitter-typescript"
;;                    "v0.20.4"
;;                    "tsx/src")
;;        (typescript "https://github.com/tree-sitter/tree-sitter-typescript"
;;                    "v0.20.4"
;;                    "typescript/src"))))

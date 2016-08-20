;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
      (auto-completion :variables
                       auto-completion-enable-help-tooltip t
                       auto-completion-enable-snippets-in-popup t)
      better-defaults
      ;;clojure
      colors
      ;;dash
      dockerfile
      emacs-lisp
      (git :variables
           git-magit-status-fullscreen t
           git-enable-github-support t
           git-gutter-use-fringe t)
      (go :variables
          ;;go-use-gometalinter t
          go-tab-width 2)
      ;;gtags
      ibuffer
      javascript
      markdown
      org
      osx
      react
      ;;ruby
      (shell :variables
             shell-default-height 30
             shell-default-shell 'eshell
             shell-default-term-shell "/bin/zsh"
             shell-default-position 'bottom
      )
      spell-checking
      (syntax-checking :variables
                       syntax-checking-enable-tooltips t)
      ;;vagrant
      version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '(dumb-jump feature-mode yaml-mode react-snippets)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

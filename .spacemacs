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
                      auto-completion-enable-sort-by-usage t
                      auto-completion-enable-snippets-in-popup t)
     ansible
     better-defaults
     docker
     emacs-lisp
     erlang
     elixir
     extra-langs
     go
     git
     github
     haskell
     php
     python
     html
     javascript
     markdown
     yaml
     react
     autohotkey
     ;; org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     osx
     (ruby :variables
           ruby-enable-ruby-on-rails-support t
           ruby-enable-enh-ruby-mode t
           ruby-version-manager 'rbenv
           ruby-test-runner 'rspec)
     ruby-on-rails
     shell-scripts
     spell-checking
     themes-megapack
     theming
     asciidoc
     syntax-checking
     vagrant
     tmux
     ;; eyebrowse
     version-control
     colors
     scala
     swift
     sql
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      auto-save-buffers-enhanced
                                      chef-mode
                                      protobuf-mode
                                      ;; scala-mode2
                                      nginx-mode
                                      key-chord
                                      helm-ghq
                                      helm-ls-git
                                      vue-mode
                                      )
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(
                                    smooth-scrolling
                                    )
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update t
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner nil
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 5
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         zenburn
                         ;; flatland
                         ;; spacegray
                         ;; material
                         ;; heroku
                         ;; naquadah
                         ;; niflheim
                         ;; tangotango
                         ;; smyx
                         ;; stekene-dark
                         ;; graham
                         ;; wilson
                         ;; solarized-dark
                         ;; spacemacs-dark
                         ;; monokai
                         ;; leuven
                         monokai)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Fira Code"
                               :size 12
                               :weight light
                               :width normal
                               :powerline-scale 1.0)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (setq mac-option-modifier 'none)
  (mac-auto-operator-composition-mode)
  (require 'key-chord)
  (key-chord-mode 1)
  (key-chord-define evil-insert-state-map  "jj" 'evil-normal-state)
  (key-chord-define evil-insert-state-map  "kk" 'evil-normal-state)
;;(setenv "PATH" (concat "/usr/local/bin/sbt/bin:" (getenv "PATH")))
;;(setenv "PATH" (concat "/usr/local/bin/scala/bin:" (getenv "PATH")))
;;(when (memq window-system '(mac ns))
;;  (exec-path-from-shell-initialize))

  (define-key global-map (kbd "s-/") 'spacemacs/comment-or-uncomment-lines)
  (define-key global-map (kbd "C-c h") 'helm-ghq)
  (define-key global-map (kbd "M-y") 'helm-show-kill-ring)
  (define-key global-map (kbd "C-c g") 'helm-ag)
  (define-key global-map (kbd "C-x /") 'comment-dwim)
  (define-key global-map (kbd "C-c C-r") 'helm-recentf)
  (define-key global-map (kbd "C-x b") 'helm-for-files)
  (define-key global-map (kbd "C-c i") 'helm-imenu)
  (define-key global-map (kbd "C-c C-g l") 'helm-ls-git-ls)
  (define-key global-map (kbd "s-p") 'helm-ls-git-ls)
  (define-key global-map (kbd "C-c C-g d") 'helm-browse-project)
  (define-key global-map (kbd "C-c n") 'flycheck-next-error)
  (define-key global-map (kbd "C-c p") 'flycheck-previous-error)
  (define-key global-map (kbd "C-c d") 'flycheck-list-errors)

  ;; 翻訳のデフォルト値を設定（en -> ja）
  (custom-set-variables
   '(google-translate-default-source-language "en")
   '(google-translate-default-target-language "ja"))

  (setq
   neo-theme 'nerd
   powerline-default-separator 'slant
   linum-format "%4d"

   ;; magit
   magit-repository-directories '("~/repos/")

   ;; deft
   deft-extensions '("org" "md" "txt")
   deft-directory "~/notes"

   ;; ruby
   ruby-insert-encoding-magic-comment nil
   ;; 指定のアイドル秒で保存
   auto-save-buffers-enhanced-interval 1
   flycheck-rubocoprc "~/.rubocop.yml"

   helm-buffer-max-length 50
   helm-ag-base-command "ag --nocolor --nogroup"
   )
  (setq-default
   show-trailing-whitespace t
   require-final-newline t
   )
  (auto-save-buffers-enhanced t)

  ;; define our own super awesome hook that will remove the before-save-hook
  (defun remove-enh-magic-comment ()
    (remove-hook 'before-save-hook 'enh-ruby-mode-set-encoding t))
  ;; add the hook to call our super awesome function.
  (add-hook 'enh-ruby-mode-hook 'remove-enh-magic-comment)
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.


(defun swap-screen()
  "Swap two screen,leaving cursor at current window."
  (interactive)
  (let ((thiswin (selected-window))
        (nextbuf (window-buffer (next-window))))
    (set-window-buffer (next-window) (window-buffer))
    (set-window-buffer thiswin nextbuf)))
(global-set-key [f2] 'swap-screen)

(defun swap-screen-with-cursor()
  "Swap two screen,with cursor in same buffer."
  (interactive)
  (let ((thiswin (selected-window))
        (thisbuf (window-buffer)))
    (other-window 1)
    (set-window-buffer thiswin (window-buffer))
    (set-window-buffer (selected-window) thisbuf)))
(global-set-key [S-f2] 'swap-screen-with-cursor)

(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(google-translate-default-source-language "en" t)
 '(google-translate-default-target-language "ja" t)
 '(package-selected-packages
   (quote
    (autothemer unfill sourcerer-theme helm-purpose window-purpose imenu-list company-ansible go-guru jinja2-mode ansible-doc ansible go-eldoc company-go go-mode sql-indent pug-mode ob-elixir org minitest insert-shebang hide-comnt docker tablist docker-tramp undo-tree yapfify uuidgen toc-org thrift py-isort osx-dictionary org-plus-contrib org-bullets mwim livid-mode skewer-mode simple-httpd live-py-mode link-hint intero hlint-refactor helm-hoogle github-search flyspell-correct-helm flyspell-correct flycheck-mix evil-visual-mark-mode evil-unimpaired evil-ediff dumb-jump darkokai-theme company-shell company-ghci column-enforce-mode color-identifiers-mode drupal-mode phpunit phpcbf php-extras php-auto-yasnippets php-mode powerline rake inflections pcre2el hydra spinner json-snatcher json-reformat multiple-cursors js2-mode parent-mode request haml-mode gitignore-mode fringe-helper git-gutter+ git-gutter pcache ht flx magit magit-popup git-commit with-editor smartparens highlight web-completion-data dash-functional tern pos-tip ghc inf-ruby yasnippet packed anaconda-mode pythonic f s company dash elixir-mode pkg-info epl markup-faces avy async auto-complete popup package-build bind-key bind-map evil noflet ensime sbt-mode scala-mode persp-mode neotree markdown-toc leuven-theme expand-region evil-matchit evil-magit color-theme-sanityinc-tomorrow badwolf-theme anzu iedit flycheck haskell-mode helm helm-core gh projectile which-key zonokai-theme zenburn-theme zen-and-art-theme yaml-mode ws-butler wolfram-mode window-numbering web-mode web-beautify volatile-highlights vi-tilde-fringe vagrant-tramp vagrant use-package underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit swift-mode sunny-day-theme sublime-themes subatomic256-theme subatomic-theme stekene-theme stan-mode spacemacs-theme spaceline spacegray-theme soothe-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode shm seti-theme scss-mode scad-mode sass-mode rvm ruby-tools ruby-test-mode ruby-end rubocop rspec-mode robe reverse-theme reveal-in-osx-finder restart-emacs rbenv rainbow-mode rainbow-identifiers rainbow-delimiters railscasts-theme quelpa qml-mode pyvenv pytest pyenv-mode py-yapf purple-haze-theme projectile-rails professional-theme popwin planet-theme pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme pbcopy pastels-on-dark-theme paradox page-break-lines osx-trash orgit organic-green-theme open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme niflheim-theme nginx-mode naquadah-theme mustang-theme move-text monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minimal-theme matlab-mode material-theme marshal markdown-mode majapahit-theme magit-gitflow magit-gh-pulls macrostep lush-theme lorem-ipsum logito linum-relative light-soap-theme less-css-mode launchctl key-chord julia-mode json-mode js2-refactor js-doc jbeans-theme jazz-theme jade-mode ir-black-theme inkpot-theme info+ indent-guide ido-vertical-mode hy-mode hungry-delete hl-todo hindent highlight-parentheses highlight-numbers highlight-indentation heroku-theme hemisu-theme help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-ls-git helm-gitignore helm-ghq helm-flyspell helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme haskell-snippets gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md gandalf-theme flycheck-pos-tip flycheck-haskell flx-ido flatui-theme flatland-theme fish-mode firebelly-theme fill-column-indicator feature-mode farmhouse-theme fancy-battery eyebrowse exec-path-from-shell evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-args evil-anzu eval-sexp-fu espresso-theme erlang enh-ruby-mode emmet-mode elisp-slime-nav dracula-theme dockerfile-mode django-theme diff-hl define-word darktooth-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme company-web company-tern company-statistics company-quickhelp company-ghc company-cabal company-anaconda colorsarenice-theme color-theme-sanityinc-solarized coffee-mode cmm-mode clues-theme clean-aindent-mode chruby cherry-blossom-theme chef-mode busybee-theme bundler buffer-move bubbleberry-theme bracketed-paste birds-of-paradise-plus-theme auto-yasnippet auto-save-buffers-enhanced auto-highlight-symbol auto-dictionary auto-compile arduino-mode apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes alchemist ahk-mode aggressive-indent afternoon-theme adoc-mode adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)

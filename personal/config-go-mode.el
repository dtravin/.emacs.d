(prelude-require-package 'whitespace)
(prelude-require-packages '(multi-compile))

(setq multi-compile-alist
      '(
        (go-mode . (
                    ("migration" "go build -o bin/migration github.com/LiflandGaming/platform/cmd/migration" (locate-dominating-file buffer-file-name ".git"))
                    ("platform" "go build -o bin/poc github.com/LiflandGaming/platform/pkg/apps/platform" (locate-dominating-file buffer-file-name ".git"))
                    ("gamesgw" "go build -o bin/gamesgw github.com/LiflandGaming/platform/pkg/apps/gamesgw" (locate-dominating-file buffer-file-name ".git"))
                    ("mgm" "go build -o bin/mgm github.com/LiflandGaming/platform/pkg/apps/microgamingwallet" (locate-dominating-file buffer-file-name ".git"))
                    ("lggwallet" "go build -v -o bin/lggwallet github.com/LiflandGaming/platform/pkg/apps/lggwallet" (locate-dominating-file buffer-file-name ".git"))
                    ("tain" "go build -v -o bin/taincasino github.com/LiflandGaming/platform/pkg/apps/taincasino" (locate-dominating-file buffer-file-name ".git"))
                    ("isb" "go build -v -o bin/isb github.com/LiflandGaming/platform/pkg/apps/isb" (locate-dominating-file buffer-file-name ".git"))
                    ("nyx" "go build -v -o bin/nyx github.com/LiflandGaming/platform/pkg/apps/nyxwallet" (locate-dominating-file buffer-file-name ".git"))
                    ("netentltwallet" "go build -v -o bin/netent github.com/LiflandGaming/platform/pkg/apps/netentltwallet" (locate-dominating-file buffer-file-name ".git"))
                    ("egt" "go build -v -o bin/egt github.com/LiflandGaming/platform/pkg/apps/egt" (locate-dominating-file buffer-file-name ".git")
                     ("dataprovider" "go build -v -o bin/dataprovider github.com/LiflandGaming/platform/pkg/components/dataprovider" (locate-dominating-file buffer-file-name ".git")))
                    ("tain-import" "go build -v -o bin/importtain cmd/import-tain/main.go" (locate-dominating-file buffer-file-name ".git"))                    )))
      )
(global-set-key (kbd "<f5>") 'multi-compile-run)

(add-hook 'go-mode-hook
          (lambda ()
            (setq gofmt-command "goimports")
            (add-hook 'before-save-hook 'gofmt-before-save)
            (set (make-local-variable 'whitespace-style) nil)
            (setq-local tab-width 4)
            (setq-local whitespace-line-column 120)
            (whitespace-mode -1)
            (flycheck-mode -1)
            )
)

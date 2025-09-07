#!/usr/bin/env bash

if ! command -v "go" &>/dev/null; then
  echo "Go isn't installed on the System." 1>&2
  exit 1
fi

apps=(
  "github.com/go-delve/delve/cmd/dlv@latest"
  "github.com/nametake/golangci-lint-langserver@latest"
  "github.com/golangci/golangci-lint/v2/cmd/golangci-lint@latest"
  "golang.org/x/tools/cmd/goimports@latest"
  "golang.org/x/tools/gopls@latest"
  "github.com/jesseduffield/lazygit@latest"
)

function install_ask {
  while true; do
    echo "=== $1"
    read -r -p "Install? [Y/n]: " answer
    case $answer in
      [Yy]* )
      return 0
      break
      ;;
      [Nn]* )
      return 1
      break
      ;;
      "" )
      return 0
      break
      ;;
    esac
  done
}

function install {
  go install "$1"
}

function install_apps {
  for app in "${apps[@]}"; do
    if install_ask "$app"; then
      install "$app"
    fi
  done
}

if [[ "$1" != "--all" ]]; then
  install_apps
else
  for app in "${apps[@]}"; do
    install "$app"
  done
fi

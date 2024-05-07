set -e fish_user_paths

set -gx HOMEBREW_PREFIX /opt/homebrew
set -gx HOMEBREW_CELLAR /opt/homebrew/Cellar
set -gx HOMEBREW_REPOSITORY /opt/homebrew
set -q PATH; or set PATH ''
set -gx PATH /opt/homebrew/bin /opt/homebrew/sbin $PATH
set -q MANPATH; or set MANPATH ''
set -gx MANPATH /opt/homebrew/share/man $MANPATH
set -q INFOPATH; or set INFOPATH ''
set -gx INFOPATH /opt/homebrew/share/info $INFOPATH

set -g fish_user_paths $HOMEBREW_PREFIX/bin $fish_user_paths

# Go
set -x GOROOT "/usr/local/go"
set -x GOPATH "$HOME/go"
set -x PATH $PATH $GOROOT/bin $GOPATH/bin

# Rust
set -g fish_user_paths $HOME/.cargo/bin $fish_user_paths

# Flutter
set -g fish_user_paths $HOME/development/flutter/bin $fish_user_paths

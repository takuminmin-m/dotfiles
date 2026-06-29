# rbenv
set -x RBENV_ROOT $HOME/.rbenv

# general aliases
alias ls="ls -aGF"

if status is-interactive
    # Commands to run in interactive sessions can go here
    rbenv init - --no-rehash fish | source
end

set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# rbenv
set -x RBENV_ROOT $HOME/.rbenv

# general aliases
alias ls="ls -aGF"

if status is-interactive
    # Commands to run in interactive sessions can go here
    rbenv init - --no-rehash fish | source
end


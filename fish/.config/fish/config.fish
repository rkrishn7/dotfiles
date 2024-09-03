set -l os (uname)

# Kubernetes
alias k="kubectl"
alias kctx="kubectx"
alias kns="kubens"

# gimme-aws-creds
alias gimme="gimme-aws-creds"
alias gimmenv="eval (gimme-aws-creds -o export)"

if test "$os" = Darwin
    set PATH /usr/local/bin /opt/homebrew/bin /opt/homebrew/sbin $PATH
end

set -x EDITOR nvim
set PATH $HOME/.local/bin $HOME/.pulumi/bin $HOME/.cargo/bin $PATH

if status is-interactive
    # Commands to run in interactive sessions can go here
    if set -q ZELLIJ
    else
        zellij
    end
    neofetch
end

starship init fish | source

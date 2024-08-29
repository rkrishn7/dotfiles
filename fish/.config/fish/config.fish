set -l os (uname)

if test "$os" = Darwin
    set PATH /usr/local/bin /opt/homebrew/bin /opt/homebrew/sbin $PATH
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    if set -q ZELLIJ
    else
        zellij
    end
    neofetch
end

starship init fish | source
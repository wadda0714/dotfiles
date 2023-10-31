if status is-interactive
    # Commands to run in interactive sessions can go here
    export GOBIN=$HOME/go/bin
    alias gcd='cd $(ghq list -p | peco)'
    alias dirgrep='grep -r'
end


# Generated for envman. Do not edit.
test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"

if status is-interactive
    # Commands to run in interactive sessions can go here
    export GOBIN=$HOME/go/bin
    alias gcd='cd $(ghq list -p | peco)'
    alias dirgrep='grep -r'
end


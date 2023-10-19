fish
export API_KEY = "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"
export GOPATH=$HOME/go
export GOBIN=~/go/bin
alias gcd='cd $(ghq list -p | peco)'

# Wasmer
export WASMER_DIR="/Users/wadahiroka/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

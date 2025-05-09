
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin

alias ls "exa -la"
alias cat bat
alias yless "jless --yaml"
alias cb "xclip -selection clipboard"

zoxide init fish | source

# Aur to run multicore
set -x MAKEFLAGS "-j$(nproc)"

# Default editor
set -x EDITOR helix

pyenv init - | source


if status is-interactive
    # Commands to run in interactive sessions can go here
    atuin init fish | source
end

alias assume="source /usr/local/bin/assume.fish"
alias woman="man"
alias transwoman="tldr"

abbr --add dc docker-compose
abbr --add dcu "docker-compose up"
abbr --add dcb "docker-compose build"
abbr --add dcd "docker-compose down"

abbr --add dsra "docker stop (docker ps -aq) && docker rm (docker ps -aq)"

abbr --add sshca-txas "ssh -i ~/.ssh/ca_txas_keypair.pem admin@52.208.66.245"

abbr --add tfv "terraform validate"
abbr --add tfp "terraform plan"
abbr --add tfa "terraform apply"
abbr -a -- dc docker-compose
abbr -a -- dcu 'docker-compose up'
abbr -a -- dcb 'docker-compose build'
abbr -a -- dcd 'docker-compose down'
abbr -a -- dsra 'docker stop (docker ps -aq) && docker rm (docker ps -aq)'
abbr -a -- sshca-txas 'ssh -i ~/.ssh/ca_txas_keypair.pem admin@52.208.66.245'
abbr -a -- tfv 'terraform validate'
abbr -a -- tfp 'terraform plan'
abbr -a -- tfa 'terraform apply'
abbr -a -- dcud 'docker compose up -d'
abbr -a -- dclf 'docker compose logs -f'

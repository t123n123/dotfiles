if status is-interactive
    # Commands to run in interactive sessions can go here
    pokemon-colorscripts --random
end
fish_add_path --path /home/mihai/.cargo/bin
fish_add_path --path /home/mihai/.local/bin

set -Ux EDITOR nvim
# Initialize Ocaml env
eval $(opam env)

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/mihai/.ghcup/bin # ghcup-env

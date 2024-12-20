if status is-interactive

    # Set enviornment variables
    set -gx EDITOR hx
    set -U fish_greeting "🐠 Unauthorized Access Prohibited 🐠"
    set -x XDG_DATA_HOME "$HOME"/.local/share
    set -x XDG_CACHE_HOME "$HOME"/.cache
    set -x CARGO_HOME "$XDG_DATA_HOME"/cargo
    set -x RUSTUP_HOME "$XDG_DATA_HOME"/rustup

    # Set Paths
    fish_add_path "$HOME"/.local/bin
    fish_add_path "$HOME"/.local/share/cargo/bin
    fish_add_path /opt/homebrew/bin
    fish_add_path /opt/homebrew/sbin

    # Abbreviations
    abbr -a -g gco git checkout
    abbr -a -g gs git status
    abbr -a -g gf git fetch
    abbr -a -g gp git pull
    abbr -a -g llg ll --git
    abbr -a -g pi podman images

    # Configure Starship prompt
    starship init fish | source
end

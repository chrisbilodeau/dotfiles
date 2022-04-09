# Configure pyenv
#status is-login; and pyenv init --path | source
#status is-interactive; and pyenv init - | source

if status is-interactive

    # Set enviornment variables
    set -gx EDITOR nvim
    set -gx PYENV_ROOT $HOME/.pyenv

    # Set Paths
    fish_add_path /home/linuxbrew/.linuxbrew/bin
    fish_add_path /home/linuxbrew/.linuxbrew/sbin
    fish_add_path $HOME/.local/bin
    fish_add_path $HOME/.cargo/bin
    fish_add_path /usr/local/sbin
    #fish_add_path $PYENV_ROOT/shims

    # Colors
    fish_config theme choose Nord

    # Abbreviations
    abbr -a -g gco git checkout

    # Configure Starship prompt
    starship init fish | source
end

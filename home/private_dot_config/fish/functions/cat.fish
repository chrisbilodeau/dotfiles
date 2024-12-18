function cat -d 'bat instead of cat'
    if command -v bat >/dev/null
        bat --theme Catppuccin-latte $argv
    else
        command cat $argv
    end
end

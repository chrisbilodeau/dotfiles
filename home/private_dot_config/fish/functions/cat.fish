function cat -d 'bat instead of cat'
    if command -v bat >/dev/null
        bat --theme Catppuccin-Latte $argv
    else
        command cat $argv
    end
end

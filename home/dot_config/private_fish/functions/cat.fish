function cat
    if command -v bat > /dev/null
        bat --theme="Nord" $argv
    else
        cat $argv
    end
end

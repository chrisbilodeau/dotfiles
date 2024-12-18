function ls -d 'eza instead of ls'
    if command -v eza >/dev/null
        eza --group-directories-first --icons $argv
    else
        command ls --color=auto $argv
    end
end

function ll -d 'alias ls -l'
    ls -l $argv
end

function la -d 'alias ls -la'
    ls -la $argv
end

function ls
    if command -v exa > /dev/null
        exa -a -s type $argv
    else
        ls $argv
    end
end

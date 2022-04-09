function ll
    if command -v exa > /dev/null
        exa -l -h -a -s type $argv
    else
        ls -la $argv
    end
end

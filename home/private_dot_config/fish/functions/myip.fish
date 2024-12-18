function myip -d 'Return source IP from various public sources'
    switch $argv
        case --dns
            dig @2606:4700:4700::1002 whoami.cloudflare ch txt +short
        case --dns4
            dig @1.1.1.2 whoami.cloudflare ch txt +short
        case --odns
            dig myip.opendns.com +short
        case -4
            curl https://v4.ipv6test.app
        case '*'
            curl https://v6.ipv6test.app
    end
end

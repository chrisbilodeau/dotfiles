function myip -d 'return public IP address'
    curl https://api.ipify.org; echo
end

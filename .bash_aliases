# -*- mode: sh; -*-

alias dropbox_decrypt='decrypt_uncompress.sh /home/lbs/Dropbox/backup/data.tar.gz.gpg'
alias dropbox_encrypt='compress_encrypt.sh data/ /home/lbs/Dropbox/backup/'
alias bandwagon='proxychains ssh root@104.160.35.115 -p 27450'
alias drive='http_proxy=127.0.0.1:8118 https_proxy=$http_proxy drive'

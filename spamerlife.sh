#!/usr/bin/bash
# Spamerlife
# Coded by Nedi Senja
# Github: https://github.com/stepbystepexe/Spamerlife
checkroot(){
if [[ "$(id -u)" -ne 0 ]]; then
    printf "\e[0m[\e[1;91m!\e[0m] \e[1;77mMohon, jalankan program root!\n\n\e[0m"
    exit 1
fi
}
clearscreen(){
    clear
    reset
    sleep 1
}
dependencies(){
    command -v bash > /dev/null 2>&1 || { echo >&2 "Sepertinya paket Bash belum terinstall. Mohon install sekarang."; exit 1; }
    command -v curl > /dev/null 2>&1 || { echo >&2 "Sepertinya paket cURL belum terinstall. Mohon install sekarang."; exit 1; }
    command -v wget > /dev/null 2>&1 || { echo >&2 "Sepertinya paket Wget belum terinstall. Mohon install sekarang."; exit 1; }
    command -v openssl > /dev/null 2>&1 || { echo >&2 "Sepertinya paket Openssl belum terinstall. Mohon install sekarang."; exit 1; }
    command -v python2 > /dev/null 2>&1 || { echo >&2 "Sepertinya paket Python2 belum terinstall. Mohon install sekarang."; exit 1; }
    command -v php > /dev/null 2>&1 || { echo >&2 "Sepertinya paket PHP belum terinstall. Mohon install sekarang."; exit 1; }
    command -v git > /dev/null 2>&1 || { echo >&2 "Sepertinya paket Git belum terinstall. Mohon install sekarang."; exit 1; }
    if [ $(ls /dev/urandom >/dev/null; echo $?) == "1" ]; then
        echo "/dev/urandom tidak ditemukan!"
    exit 1
fi
}
load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\r\e[0m[\e[1;32m%-${barlength}s\e[0m]\e[00m" "${bar:0:n}"
        printf "  \e[1;77mLOADING...!\e[0m "
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
banner(){
    echo
    echo
    printf "\e[0;95m█▀▀▀▀ █▀▀▀█ █▀▀▀█ █▀█▀█ █▀▀▀▀ █▀▀▀▄  \e[0;93m █    ▀█▀ █▀▀▀ █▀▀▀▀\n"
    printf "\e[0;95m▀▀▀▀█ █▀▀▀▀ █▀▀▀█ █ █ █ █▀▀▀  █▀▀▀▄  \e[0;93m █     █  █▀▀▀ █▀▀▀\n"
    printf "\e[0;95m▀▀▀▀▀ ▀     ▀   ▀ ▀   ▀ ▀▀▀▀▀ ▀   ▀  \e[0;93m ▀▀▀▀ ▀▀▀ ▀    ▀▀▀▀▀\n"
}
template(){
    printf "\n\e[0;46;90;1m[        Spamer Life, My Github: @stepbystepexe         ]\e[0m\n\n"
}
menu() {
    printf "\e[0m[\e[96;1m1\e[0m] \e[77;1mAlpha         \e[0m[\e[96;1m4\e[0m] \e[77;1mHooqy       \e[0m[\e[96;1m7\e[0m] \e[77;1mTelkomsel\n"
    printf "\e[0m[\e[96;1m2\e[0m] \e[77;1mBukalapak     \e[0m[\e[96;1m5\e[0m] \e[77;1mOyoroom     \e[0m[\e[96;1m8\e[0m] \e[77;1mTokopedia\n"
    printf "\e[0m[\e[96;1m3\e[0m] \e[77;1mGrab          \e[0m[\e[96;1m6\e[0m] \e[77;1mTaxi        \e[0m[\e[96;1m9\e[0m] \e[77;1mTri\n"
    echo
    printf "\e[0m[\e[93;1m&\e[0m] LISENSI\n"
    printf "\e[0m[\e[94;1m#\e[0m] Informasi\n"
    printf "\e[0m[\e[92;1m*\e[0m] Perbarui\n"
    printf "\e[0m[\e[91;1m-\e[0m] Keluar\n"
        read -p $'\n\n\e[0m[\e[1;95m/\e[0m\e[0m] \e[1;77mMasukan opsi: \e[0m\en' option
            if [[ $option == 01 || $option == 1 ]]; then
            alpha
                elif [[ $option == 02 || $option == 2 ]]; then
                bukalapak
                    elif [[ $option == 03 || $option == 3 ]]; then
                    grab
                        elif [[ $option == 04 || $option == 4 ]]; then
                        hooqy
                            elif [[ $option == 05 || $option == 5 ]]; then
                            oyoroom
                        elif [[ $option == 06 || $option == 6 ]]; then
                        taxi
                    elif [[ $option == 07 || $option == 7 ]]; then
                    telkomsel
                elif [[ $option == 08 || $option == 8 ]]; then
                tokopedia
            elif [[ $option == 09 || $option == 9 ]]; then
            tri
        elif [[ $option == '&' ]]; then
        echo
        nano LICENSE
        echo
        clearscreen
        banner
        template
        menu
        elif [[ $option == '#' ]]; then
        echo
        informasi
        echo
        elif [[ $option == '*' ]]; then
        echo
        git pull origin master
        echo
        read -p $'\e[0m[\e[92m Tekan Enter \e[0m]'
        clearscreen
        banner
        template
        menu
        elif [[ $option == '-' ]]; then
        echo
        printf "\e[0m[\e[1;91m!\e[0m] \e[1;77mKeluar dari program!\n"
        echo
        exit 1
    else
        echo
        printf "\e[0m[=\e[1;41;77m Pilihan Salah \e[0m=]"
        echo
        sleep 1
    clearscreen
    banner
    template
    menu
fi
}
informasi(){
clear
printf "\e[0;46;90;1m[        Spamer Life, My Github: @stepbystepexe         ]\e[0m\n"
toilet -f smslant 'Spam'
printf "
Nama        : Spamerlife
Versi       : 3.5 (Update: 13 September 2020, 4:30 PM)
Tanggal     : 02 Maret 2019
Author      : Nedi Senja
Tujuan      : Menyepam target korban
              kumpulan spam terbaru
Terimakasih : Allah SWT.
              FR13NDS, & seluruh
              manusia seplanet bumi
NB          : Manusia gax ada yang sempurna
              sama kaya tool ini.
              Silahkan laporkan kritik atau saran
              Ke - Email: d_q16x@outlook.co.id
                 - WhatsApp: +62 8577-5433-901

[ \e[4mGunakan tool ini dengan bijak \e[0m]\n"
sleep 1
read -p $'\n\n\e[0m[ Tekan Enter ]' opt
    if [[ $opt = '' ]]; then
        clearscreen
        banner
        template
        menu
    fi
}
alpha(){
    echo
    printf "\e[0m[\e[1;91m!\e[0m] \e[77;1mMengecek ...\n"
    sleep 3
    echo
    printf "\e[0m[\e[1;92m+\e[0m] \e[77;1mSpam   : \e[0mAlpha\n"
    printf "\e[0m[\e[1;93m*\e[0m] \e[77;1mJenis  : \e[0mSMS\n"
    printf "\e[0m[\e[1;94m#\e[0m] \e[77;1mJumlah : \e[0mTerbatas\n"
    printf "\e[0m[\e[1;95m@\e[0m] \e[77;1mBahasa : \e[0mPython\n"
    printf "\e[0m[\e[1;96m&\e[0m] \e[77;1mAuthor : \e[0mNedi Senja\n"
    load
    echo
    sleep 1.5
    echo
    cd $HOME/spamerlife/tools/
    python2 alpha.py
}
bukalapak(){
    echo
    printf "\e[0m[\e[1;91m!\e[0m] \e[77;1mMengecek ...\n"
    sleep 3
    echo
    printf "\e[0m[\e[1;92m+\e[0m] \e[77;1mSpam   : \e[0mBukalapak\n"
    printf "\e[0m[\e[1;93m*\e[0m] \e[77;1mJenis  : \e[0mPesan WhatsApp\n"
    printf "\e[0m[\e[1;94m#\e[0m] \e[77;1mJumlah : \e[0mTakterbatas\n"
    printf "\e[0m[\e[1;95m@\e[0m] \e[77;1mBahasa : \e[0mPHP\n"
    printf "\e[0m[\e[1;96m&\e[0m] \e[77;1mAutgor : \e[0mNedi Senja\n"
    load
    echo
    sleep 1.5
    echo
    cd $HOME/spamerlife/tools/
    php bukalapak.php
}
grab(){
    echo
    printf "\e[0m[\e[1;91m!\e[0m] \e[77;1mMengecek ...\n"
    sleep 3
    echo
    printf "\e[0m[\e[1;92m+\e[0m] \e[77;1mSpam   : \e[0mGrab\n"
    printf "\e[0m[\e[1;93m*\e[0m] \e[77;1mJenis  : \e[0mPanggilan\n"
    printf "\e[0m[\e[1;94m#\e[0m] \e[77;1mJumlah : \e[0mTakterbatas\n"
    printf "\e[0m[\e[1;95m@\e[0m] \e[77;1mBahasa : \e[0mPHP\n"
    printf "\e[0m[\e[1;96m&\e[0m] \e[77;1mAuthor : \e[0mNedi Senja\n"
    load
    echo
    sleep 1.5
    echo
    cd $HOME/spamerlife/tools/
    php grab.php
}
hooqy(){
    echo
    printf "\e[0m[\e[1;91m!\e[0m] \e[77;1mMengecek ...\n"
    sleep 3
    echo
    printf "\e[0m[\e[1;92m+\e[0m] \e[77;1mSpam   : \e[0mHooqy\n"
    printf "\e[0m[\e[1;93m*\e[0m] \e[77;1mJenis  : \e[0mOTP\n"
    printf "\e[0m[\e[1;94m#\e[0m] \e[77;1mJumlah : \e[0mTakterbatas\n"
    printf "\e[0m[\e[1;95m@\e[0m] \e[77;1mBahasa : \e[0mPython\n"
    printf "\e[0m[\e[1;96m&\e[0m] \e[77;1mAuthor : \e[0mNedi Senja\n"
    load
    echo
    sleep 1.5
    echo
    cd $HOME/spamerlife/tools/
    python2 hooqy.py
}
oyoroom(){
    echo
    printf "\e[0m[\e[1;91m!\e[0m] \e[77;1mMengecek ...\n"
    sleep 3
    echo
    printf "\e[0m[\e[1;92m+\e[0m] \e[77;1mSpam   : \e[0mOyoroom\n"
    printf "\e[0m[\e[1;93m*\e[0m] \e[77;1mJenis  : \e[0mSMS\n"
    printf "\e[0m[\e[1;94m#\e[0m] \e[77;1mJumlah : \e[0mTerbatas\n"
    printf "\e[0m[\e[1;95m@\e[0m] \e[77;1mBahasa : \e[0mPython\n"
    printf "\e[0m[\e[1;96m&\e[0m] \e[77;1mAuthor : \e[0mNedi Senja\n"
    load
    echo
    sleep 1.5
    echo
    cd $HOME/spamerlife/tools/
    python2 oyoroom.py
}
taxi(){
    echo
    printf "\e[0m[\e[1;91m!\e[0m] \e[77;1mMengecek ...\n"
    sleep 3
    echo
    printf "\e[0m[\e[1;92m+\e[0m] \e[77;1mSpam   : \e[0mTaxi\n"
    printf "\e[0m[\e[1;93m*\e[0m] \e[77;1mJenis  : \e[0mPanggilan\n"
    printf "\e[0m[\e[1;94m#\e[0m] \e[77;1mJumlah : \e[0mTakterbatas\n"
    printf "\e[0m[\e[1;95m@\e[0m] \e[77;1mBahasa : \e[0mPython\n"
    printf "\e[0m[\e[1;96m&\e[0m] \e[77;1mAuthor : \e[0mNedi Senja\n"
    load
    echo
    sleep 1.5
    echo
    cd $HOME/spamerlife/tools/
    python2 taxi.py
}
telkomsel(){
    echo
    printf "\e[0m[\e[1;91m!\e[0m] \e[77;1mMengecek ...\n"
    sleep 3
    echo
    printf "\e[0m[\e[1;92m+\e[0m] \e[77;1mSpam   : \e[0mTelkomsel\n"
    printf "\e[0m[\e[1;93m*\e[0m] \e[77;1mJenis  : \e[0mSMS\n"
    printf "\e[0m[\e[1;94m#\e[0m] \e[77;1mJumlah : \e[0mTakterbatas\n"
    printf "\e[0m[\e[1;95m@\e[0m] \e[77;1mBahasa : \e[0mPython\n"
    printf "\e[0m[\e[1;96m&\e[0m] \e[77;1mAuthor : \e[0mNedi Senja\n"
    load
    echo
    sleep 1.5
    echo
    cd $HOME/spamerlife/tools/
    python2 telkomsel.py
}
tokopedia(){
    echo
    printf "\e[0m[\e[1;91m!\e[0m] \e[77;1mMengecek ...\n"
    sleep 3
    echo
    printf "\e[0m[\e[1;92m+\e[0m] \e[77;1mSpam   : \e[0mTokopedia\n"
    printf "\e[0m[\e[1;93m*\e[0m] \e[77;1mJenis  : \e[0mPanggilan\n"
    printf "\e[0m[\e[1;94m#\e[0m] \e[77;1mJumlah : \e[0mTerbatas\n"
    printf "\e[0m[\e[1;95m@\e[0m] \e[77;1mBahasa : \e[0mPHP\n"
    printf "\e[0m[\e[1;96m&\e[0m] \e[77;1mAuthor : \e[0mNedi Senja\n"
    load
    echo
    sleep 1.5
    echo
    cd $HOME/spamerlife/tools/
    php tokopedia.php
}
tri(){
    echo
    printf "\e[0m[\e[1;91m!\e[0m] \e[77;1mMengecek ...\n"
    sleep 3
    echo
    printf "\e[0m[\e[1;92m+\e[0m] \e[77;1mSpam   : \e[0mTri\n"
    printf "\e[0m[\e[1;93m*\e[0m] \e[77;1mJenis  : \e[0mSMS\n"
    printf "\e[0m[\e[1;94m#\e[0m] \e[77;1mJumlah : \e[0mTakterbatas\n"
    printf "\e[0m[\e[1;95m@\e[0m] \e[77;1mBahasa : \e[0mPython\n"
    printf "\e[0m[\e[1;96m&\e[0m] \e[77;1mAuthor : \e[0mNedi Senja\n"
    load
    echo
    sleep 1.5
    echo
    cd $HOME/spamerlife/tools/
    python2 tri.py
}
#checkroot
#dependencies
    clearscreen
    banner
    template
    menu

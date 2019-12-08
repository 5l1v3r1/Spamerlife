#!/usr/bin/python
# -*- coding: utf-8 -*-
# Coded by Senja
# Github: github.com/stepbystepexe/Spamerlife

import os, sys, time, mechanize
from bs4 import BeautifulSoup as BS

class spamer:
        def __init__(self):
                #install browser
                self.br = mechanize.Browser()
                self.br.set_handle_equiv(True)
                self.br.set_handle_gzip(True)
                self.br.set_handle_redirect(True)
                self.br.set_handle_referer(True)
                self.br.set_handle_robots(False)
                self.br.set_handle_refresh(mechanize._http.HTTPRefreshProcessor(), max_time=1)
                self.br.addheaders = [
                ('Connection','keep-alive'),
                ('Pragma','no-cache'),
                ('Cache-Control','no-cache'),
                ('Origin','http://sms.payuterus.biz'),
                ('Upgrade-Insecure-Requests','1'),
                ('Content-Type','application/x-www-form-urlencoded'),
                ('User-Agent','Opera/9.80 (Android; Opera Mini/8.0.1807/36.1609; U; en) Presto/2.12.423 Version/12.16'),
                ('Accept','text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3'),
                ('Referer','http://sms.payuterus.biz/alpha/'),('Accept-Encoding','gzip, deflate'),
                ('Accept-Language','id-ID,id;q=0.9,en-US;q=0.8,en;q=0.7'),
                ('Cookie','_ga=GA1.2.131924726.1560439960; PHPSESSID=jjrqqaakmfcgfgbtjt8tve5595; _gid=GA1.2.1969561921.1561024035; _gat=1')
                ]
                self.url = 'http://sms.payuterus.biz/alpha/'
                self.banner()

        def banner(self):
                no = input('\033[0m[\033[0m\033[1;32m+\033[0m] \033[1;77mInput No Target: \033[0m')
                msg = input('\033[0m[\033[0m\033[1;34m~\033[0m] \033[1;77mMesagee: \033[0m')
                self.main(no,msg)

        def main(self,no,msg):
                o = []
                bs = BS(self.br.open(self.url),features = 'html.parser')
                for x in bs.find_all('span'):
                        o.append(x.text)
                capt = int(str(o)[2])+int(str(o)[6])
                self.br.select_form(nr = 0)
                for e in self.br.forms():
                        print (e)
                self.br.form['nohp']=no
                self.br.form['pesan']=msg
                self.br.form['captcha']=str(capt)
                sub = self.br.submit().read()
                if '\033[0m[\033[0m\033[1;34m#\033[0m] \033[1;77mSucces to send message in the free \033[0m' in str(sub):
                        print('\033[0m[\033[0m\033[1;36m/\033[0m] \033[1;77mSucces send message \033[0m',no)
                elif '\033[0m[\033[0m\033[1;33m*\033[0m] Waiting in 8 second as backend \033[0m' in str(sub):
                        print('\033[0m[\033[0m\033[1;31m!\033[0m] \033[1;77mPlease wait as the message')
                else:
                        print('\033[0m[\033[0m\033[1;31m-\033[0m] \033[1;77mSend failed the \033[0m',no)

try:
        spamer()
        while True:
                w = input("\n\033[0m[\033[0m\033[1;36m?\033[0m] \033[1;77mRestart program \033[0m[Y/n]: \033[1;77m")
                if w.lower() == 'Y' or 'y':
                        spamer()
                elif w.lower() == 'N' or 'n':
                        exit('\033[0m[\033[0m\033[1;31m!\033[0m] \033[1;77mExit the program')
except KeyboardInterrupt:
        print('\n\033[0m[\033[0m\033[1;31m!\033[0m] \033[1;77mError: KeyboardInterrupt')
except Exception as p:
        print('\033[0m[\033[0m\033[1;31m!\033[0m] \033[1;77mInvalid the interupt')
        print
        sys.exit(1)

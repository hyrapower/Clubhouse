from selenium import webdriver
from time import sleep
from secrets import username, password

class unfollowBot():
    def __init__(self):
        self.driver = webdriver.Chrome()

    def getInstagramPage(self):
                self.driver.get('https://www.instagram.com/' + username + '/')

    def login(self):
        try:
            loginbtn = self.driver.find_element_by_xpath('//*[@id="react-root"]/section/nav/div[2]/div/div/div[3]/div/span/a[1]/button')
            loginbtn.click()

            fb_login = self.driver.find_element_by_xpath('//*[@id="react-root"]/section/main/div/article/div/div[1]/div/form/div[6]/button')
            fb_login.click()
            
            email_in = self.driver.find_element_by_xpath('//*[@id="react-root"]/section/main/div/article/div/div[1]/div/form/div[2]/div/label/input')
            email_in.send_keys(username)

            pw_in = self.driver.find_element_by_xpath('//*[@id="react-root"]/section/main/div/article/div/div[1]/div/form/div[3]/div/label/input')
            pw_in.send_keys(password)

            login_btn = self.driver.find_element_by_xpath('//*[@id="u_0_0"]')
            login_btn.click()

        except Exception:
            print ('failed to login with facebook')

bot = unfollowBot()

try:
    bot.getInstagramPage()
    try:
        bot.login()
    except Exception:
        print ('login failed')
except Exception:
    print("Can't access instagram")
    bot.exitDriver()
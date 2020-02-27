from selenium import webdriver
from time import sleep


# this bot was created by AJ-4, original script located here
# tinderbot rquires you to run this script in version 2.7
# please run py -2.7 tinderbot.py in the console to run this script if you need to
# change the credentials in secrets.py in order to run the application
# you need to run virtualenv venv to start server
class InstagramBot():
    def __init__(self):
        self.driver = webdriver.Chrome()
    def getInstagramPage(self):
        while True:
            try:
                self.driver.get('http://localhost/?user=hardlydoinit')

                sleep(6)

                followerCount = self.driver.find_element_by_xpath('/html/body/div/div/div[2]/div[1]/div[2]/span').text
                print (followerCount)
                f = open("followers.txt", "w")
                f.write("Instagram followers: " + followerCount)
                f.close()

                sleep(600)
                
                self.driver.navigate().refresh()
            except Exception:
                break

    def exitDriver(self):
        self.driver.quit()

    def closeDriver(self):
        self.driver.close()

bot = InstagramBot()

while True:
    try:
        bot.getInstagramPage()
    except Exception:
        print ('login failed')
        bot.exitDriver()
        break
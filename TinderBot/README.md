# TinderBot - Originally created by AJ-4

* TinderBot - https://www.youtube.com/watch?v=lvFAuUcowT4
* https://github.com/aj-4/tinder-swipe-bot

If you're interested in this project please contact AJ-4 and thank him for his work.

## notes about this project

* There's a lot missing from this bot, it's in a very WIP state and tends to get banned when used
* **Do not run this for your actual botting, you will get banned**

## How it works

Pop open an instance of chromedriver, run the command virtualenv venv somewhere in the console, and then run py -2.7 tinderbot.py or just py tinderbot.py if things go smooth for you.

* The bot starts by opening up a chrome window that is controlled by chromedriver. It then makes a call as a 'user' to go to tinder.com and pull down the webpage

* After that we copied the x-code to find the path to the elements we wanted to select

* We used the elements and clicked on them by using self.driver.click() more or less 

* Every time we clicked something, we would move to somewhere else in the application

* Where and how is somewhat arbitrary, but we look like '''''we are human''''' in loads of air quotes

* The login process is that plus having to enter some text

* After that's all taken care of for us we can use the swipe action to like people or dislike them

* add in some error handling, waiting for the page to load and render

* TODO: make it work reliably, add in error handling, retrying, and some more logic to figure out 'where we are' if it can't find an element to try something else
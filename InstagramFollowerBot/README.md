# Current Project Manifest

* Instagram API - Auto Alerts for new subscribers - https://developers.facebook.com/docs/instagram-basic-display-api/getting-started

## Bot Intention

This bot is to connect to the instagram API and allow the user to login, set a watcher on their subscribers, and then notify streamlabs obs using the utility. I have been thinking about setting it up as a local app first and if it can't be integrated directly with streamlabs obs then add it as a source to the program later. This is still a half baked idea so on the off chance that someone is reading this, I still need to figure out if it's possible.

## Design Doc

This application is going to be broken down into different parts.

* Get the data from Instagram
* Store the data on local machine
* Display data on streamlabs OBS

Access API > Save to the text file read by OBS > use bot in OBS as usual > profit

1. Instagram data

So I was able to pull down the instagram data by using some code written by... I forgot... and can't seem to find the link. It did what I wanted and pulled directly from instagram using ajax and I've been too lazy to do it with any other language. Since I only needed the subscriber count and nothing else for the moment this worked out fine.

TODO: get who the last person was to subscribe to the account

2. Store the data on local machine

This was pretty easy. I canabalized the code from TinderBot to go grab the data from the php that I'm hosting via apache, then refresh it every 5 minutes. XAMPP made everything so wonderfully easy since I did this years ago and had to do it all by hand.

3. Display data on streamlabs OBS

Now here comes the tricky bit. I have no idea how to do this. Streamlabs doesn't have an open plugin thing available for me to hook into, and they have a record of locking any file that it's currently using. Making it incredibly difficult to make it work... Ideally though, I'd be hoping that the bot that is used for streamlabs would just reference a text file that I could update and then instead of locking it, it would just read the message whenever it was used. Still a half baked idea but it's the best I got.

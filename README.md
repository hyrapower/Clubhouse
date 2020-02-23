# Welcome to the clubhouse
This repo is for all the random utilities we need to create.
https://github.com/hyrapower/Clubhouse

## Current Project Manifest
* TinderBot - https://www.youtube.com/watch?v=lvFAuUcowT4
* Instagram API - Auto Alerts for new subscribers - https://developers.facebook.com/docs/instagram-basic-display-api/getting-started

## Current Project Ideas
* Small Game - C#
* Basic Python App
* Backup of the WinForms app
* Powershell scripts for local

# Getting Started

## Programs to install to get started
* NodeJS - https://nodejs.org/en/download/
* git for windows - https://gitforwindows.org/
* VS Code - https://code.visualstudio.com/download
* Python 3 - 
* Python 2.7 - Part of NodeJS / Selenium
* nuget - https://www.nuget.org/downloads
  * https://docs.microsoft.com/en-us/nuget/reference/nuget-exe-cli-reference

## how to use git
git is a version management system for a repository of code. It is used through the program 'git bash' for windows. Open 'git bash' and use the following commands to get to the repository

* cd ~
* cd projects
* cd clubhouse

After you get to the repo use 'git status' to view the status of the project. It will tell you if you are up-to-date or if you need to 'git pull' down the latest changes.

* git status
* git pull

After you are up to date you can start working on your local changes. These changes are used by opening VS Code (download link above) and opening the project. VS Code is a lightweight code editor that has all the tools that you need including a terminal, linting, and autocomplete. Do this by clicking 'file' > 'open folder' and select the 'projects' folder stored in C:\users\yourUser\projects

Once the folder is opened in your VS Code window you can start adding files and start coding.

When you are ready to commit your changes and push them up to the repo you will do the following commands:

* git status
* git add -A
* git commit -m "Verbose description of what you did in your code here"
* git push

'git status' will show the current status of the project. All changes will be marked as red for deletes and green as added changes.

'git add' will allow you to add files to the commit. -A is a flag that means 'everything, including pointers, links, and any changes to the repo itself you may have made'. There are other options as well like adding a specific folder 'your local path here' or adding the folder you are currently in with bash using '.'

'git commit' means you're done with the commit and you have everything ready to push up to the repo. -m is the message flag. your message is the next param and will be wrapped in "double quotes".

'git push' will push the local commit up to the remote repo. There's some other flags and options but after you set it up the first time you shouldn't need to do this. Doubly so if you aren't making a new repo or branch.

git cheat sheet here: https://www.git-tower.com/blog/git-cheat-sheet/
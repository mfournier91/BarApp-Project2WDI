# README

Welcome to my project 2 Readme. If you'd like to see a demo of the app, check out my presentation at: https://www.youtube.com/watch?v=tADQfjdbHno

Technologies used:

* Ruby version
  * ruby 2.3.1p112
  * rails 5.0.0

* Devise gem for user authentication


Approach taken:

* Start with fewest number of models possible. Started with 2: Bars and happyhours.

* Add one feature at a time. Switching to a new branch for each feature and/or model.
  * Added third model: menu items.
  * Added user authentication via devise. Customized actions that require authentication. Customized Devise sign in and sign up forms to include user name.
  * Added m2m favorite join table between users and bars.
  * Added m2m conversations join table between two users. Added message table which belongs to conversations and one user.
  * Added styling

Installation :

* For now, go to https://github.com/mfournier91/BarApp-Project2WDI and clone. CD into the directory and type rails s into the terminal. Wait for the server to start and enter localhost:3000 into your browser.

* Within a few days of the commit which contains these instructions in this readme, I intend to host this app on Heroku. I plan to update this readme to link there. If I negelect to do so and you want to see it, post an issue.

Unsolved problems:

* I am currently unaware of any technical issues with the app.
* There are many features which I would like to add, but I have not had the time to implement
or( in the programmers sense of the word) do not yet know how to implement them. Please view userStories.md in the planning directory for more information about potential future updates.

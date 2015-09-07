User Stories

1. As an user I should be able to create an account (register)
2. As an user I should be able to sign in
3. As an user I should be able to select tennis courts I would like to play at (or set up my home / work location and set a mile radius of tennis courts I would to to).
4. As an user I should be able to set a time on weekly basis when I am available to play
5. As an user I should be able to set my proficiency level
6. As an user I should be able to see a list of all people that have the same time availability as me.
7. As an user I should be able to to invite another user with my proficiency level to play a game
8. As an user I should be able to set a score after a game with another user.
9. As an user I should be able to see my progress (statistics of games played, wins and losses).
10. As an user I should be able to see statistics of my favorite users and my favorite tennis courts.
11. As an user I should be able to send another user a message.


Database

User
  Email
  Password
  Name
  Age
  Gender
  Photo

Address
  Street
  City
  State
  Zip

User_Addresses
  User_Id
  Address_Id
  Type

Proficiency_Level
  Name
  Description

User_Proficiency_Level
  User_Id
  Proficiency_Level_Id
  User_Comment

Game
  Date Time
  Duration
  Place
  Winner_Id
  Loser_Id
  Comment

Rating
  Game_Id
  Rating_Player_Id
  Rated_Player_Id
  Rate

Game_Players
  Game_id
  Player_One_Id
  Player_Two_Id


Tennis courts ? Get them from Google somehow

Create a calendar or get one from Google Calendar API

How to store availability times?


Email and Zipcode validations: https://github.com/DavyJonesLocker/client_side_validations/wiki/Custom-Validators


Proficiency Types

1. Newbie
    What's a tennis racquet?
2. Rookie
    There is always hope!
3. Beginner
    Enjoy when you can, endure when you must
4. Talented
    I'm getting there, all I need is practice, practice, practice
5. Intermediate
    The more I play the better I become
6. Seasoned
    I may not always win, but when I do, I do it with style
7. Advanced
    I have my own style
8. Proficient
    I'm just good at this
9. Expert
    I'm Roger Federer's cousin

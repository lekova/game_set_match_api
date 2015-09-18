# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
User.create([
  {
    email: "lin@lin.com",
    password: "lin",
    password_confirmation: "lin",
    name: "Lina",
    age: 12,
    gender: "f",
    about_me: "this is some text about lin",
    token: "77e21e35a30f341e9fd28a2a06d789f9"
  }, {
    email: "rad@rad.com",
    password: "rad",
    password_confirmation: "rad",
    name: "Rado",
    age: 14,
    gender: "m",
    about_me: "this is some text about rad",
    token: "a30f341e9fd28a77e21e352a06d789f9"
  }, {
    email: "val@val.com",
    password: "val",
    password_confirmation: "val",
    name: "Val",
    age: 14,
    gender: "m",
    about_me: "this is some text about val",
    token: "19fd28a2ae35a30f341e06d777e289f9"
  }, {
    email: "alex@alex.com",
    password: "alex",
    password_confirmation: "alex",
    name: "Alex",
    age: 11,
    gender: "f",
    about_me: "this is some text about alex",
    token: "19fd28a2ae35a30f341e06d777e289f9"
  }, {
    email: "rozi@rozi.com",
    password: "rozi",
    password_confirmation: "rozi",
    name: "Rozi",
    age: 14,
    gender: "f",
    about_me: "I am just starting with tennis",
    token: "19fd28a241e06d777e289f9ae35a30f3"
  }, {
    email: "mark@mark.com",
    password: "mark",
    password_confirmation: "mark",
    name: "Mark A",
    age: 14,
    gender: "m",
    about_me: "Tennis is what I do whenever I have some free time",
    token: "19fd28a241e06d555e289f9ae35a30f3"
  }, {
    email: "krumo@krumo.com",
    password: "krumo",
    password_confirmation: "krumo",
    name: "Krumo Y",
    age: 12,
    gender: "m",
    about_me: "Love to play, love to watch",
    token: "19fd65a241e06d877e289f9ae35a30f3"
  },
])

Address.destroy_all
Address.create!([
  {
    street: "Hillside Cir",
    city: "Somerville",
    state: "MA",
    zipcode: "02143",
    country: "US"
  }, {
    street: "Hillside Cir",
    city: "Somerville",
    state: "MA",
    zipcode: "02143",
    country: "US"
  }, {
    street: "Dale",
    city: "Malden",
    state: "MA",
    zipcode: "02148",
    country: "US"
  }, {
    street: "Dale",
    city: "Malden",
    state: "MA",
    zipcode: "02148",
    country: "US"
  }, {
    street: "Franklin",
    city: "Somerville",
    state: "MA",
    zipcode: "02143",
    country: "US"
  }, {
    street: "51 State",
    city: "Boston",
    state: "MA",
    zipcode: "02210",
    country: "US"
  }, {
    street: "51 Melcher",
    city: "Boston",
    state: "MA",
    zipcode: "02210",
    country: "US"
  }, {
    street: "Porter Cir",
    city: "Somerville",
    state: "MA",
    zipcode: "02143",
    country: "US"
  }, {
    street: "Elm Cir",
    city: "Somerville",
    state: "MA",
    zipcode: "02143",
    country: "US"
  }
]);

UserAddress.destroy_all
UserAddress.create([
  {
    user_id: 1,
    address_id: 1,
    name: "home"
  },{
    user_id: 1,
    address_id: 6,
    name: "work"
  },{
    user_id: 2,
    address_id: 1,
    name: "home"
  },{
    user_id: 3,
    address_id: 3,
    name: "home"
  }, {
    user_id: 4,
    address_id: 4,
    name: "home"
  }, {
    user_id: 5,
    address_id: 5,
    name: "home"
  }, {
    user_id: 5,
    address_id: 6,
    name: "work"
  }, {
    user_id: 5,
    address_id: 7,
    name: "Lina's work"
  }, {
    user_id: 6,
    address_id: 8,
    name: "The Den"
  }, {
    user_id: 7,
    address_id: 9,
    name: "La Casa"
  }
])

ProficiencyType.destroy_all
ProficiencyType.create!([
  {
    name: "Newbie",
    description: "What's tennis racquet"},
  {
    name: "Rookie",
    description: "There is always hope!"},
  {
    name: "Beginner",
    description: "Enjoy when you can, endure when you must"},
  {
    name: "Talented",
    description: "I'm getting there, all I need is practice, practice, practice"},
  {
    name: "Intermediate",
    description: "The more I play the better I become"},
  {
    name: "Seasoned",
    description: "I may not always win, but when I do, I do it with style"},
  {
    name: "Advanced",
    description: "I have my own style"},
  {
    name: "Proficient",
    description: "I'm just good at this!"},
  {
    name: "Expert",
    description: "I'm Roger Federer's cousin"}
]);

UserProficiencyType.destroy_all
UserProficiencyType.create!([
  {
    user_id: 1,
    proficiency_type_id: 3,
    user_comment: ""
  }, {
    user_id: 2,
    proficiency_type_id: 2,
    user_comment: ""
  }, {
    user_id: 3,
    proficiency_type_id: 4,
    user_comment: ""
  }, {
    user_id: 5,
    proficiency_type_id: 2,
    user_comment: ""
  }, {
    user_id: 6,
    proficiency_type_id: 7,
    user_comment: ""
  }, {
    user_id: 7,
    proficiency_type_id: 6,
    user_comment: ""
  }
])

Game.create!([
  {
    datetime: DateTime.new(2015,5,1),
    duration: 50,
    place: "Malden",
    winner_id: 1,
    loser_id: 2,
    comment: "Be there at 8",
    status: 1,
    score: '6:4, 7:6, 6:5'
  }, {
    datetime: DateTime.new(2015, 5, 6),
    duration: 90,
    place: "Somerville",
    winner_id: 2,
    loser_id: 1,
    comment: "We are playing in Somerville. On the Tufts tennis courts.",
    status: 1,
    score: '6:7, 3:6, 7:1, 7:5, 5:7'
  }, {
    datetime: DateTime.new(2015, 5, 14),
    duration: 60,
    place: "Somerville",
    winner_id: 6,
    loser_id: 1,
    comment: "We are playing in Somerville. On the Tufts tennis courts again.",
    status: 1,
    score: '6:4, 6:1, 6:5'
  }, {
    datetime: DateTime.new(2015, 5, 21),
    duration: 45,
    place: "Somerville",
    winner_id: 6,
    loser_id: 1,
    comment: "We are playing in Somerville. On the Tufts tennis courts again.",
    status: 1,
    score: '6:5, 6:3, 6:5'
  }, {
    datetime: DateTime.new(2015, 5, 28),
    duration: 90,
    place: "Somerville",
    winner_id: 6,
    loser_id: 1,
    comment: "We are playing in Somerville. On the Tufts tennis courts again.",
    status: 1,
    score: '6:4, 6:1, 6:5'
  }, {
    datetime: DateTime.new(2015, 6, 6),
    duration: 90,
    place: "Malden",
    winner_id: 1,
    loser_id: 2,
    comment: "We are playing in Malden with Val and Alex",
    status: 1,
    score: '6:2, 6:1, 7:6'
  }, {
    datetime: DateTime.new(2015, 6, 7),
    duration: 90,
    place: "Malden",
    winner_id: 1,
    loser_id: 2,
    comment: "Second day playing with Val and Alex",
    status: 1,
    score: '6:4, 6:1, 6:5'
  }, {
    datetime: DateTime.new(2015, 6, 14),
    duration: 90,
    place: "Malden",
    winner_id: 3,
    loser_id: 1,
    comment: "I am getting better at this, still suck pretty much",
    status: 1,
    score: '6:2, 6:5, 6:5'
  }, {
    datetime: DateTime.new(2015, 6, 14),
    duration: 90,
    place: "Medford",
    winner_id: 1,
    loser_id: 5,
    comment: "Playing with Rozi is always fun. Good game",
    status: 1,
    score: '6:5, 6:5, 6:5'
  }
]);

GameRating.create!([
  {
    game_id: 1,
    user_id: 1,
    rate: 5,
    user_comment: "It was a great game, need to be more efficient with the distance"
  }, {
    game_id: 1,
    user_id: 2,
    rate: 4,
    user_comment: "Need to work on my backhand, cuz missing those ones"
  }
])

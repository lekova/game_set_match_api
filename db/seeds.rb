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
  }
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
    street: "51 Melcher",
    city: "Boston",
    state: "MA",
    zipcode: "02210",
    country: "US"
  }
])

UserAddress.destroy_all
UserAddress.create([
  {
    user_id: 1,
    address_id: 1,
    name: "home"
  },{
    user_id: 1,
    address_id: 5,
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
])

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
    user_id: 4,
    proficiency_type_id: 3,
    user_comment: ""
  }
])

Game.create!([
  {
  datetime: Time.now,
  duration: 90,
  place: "Somerville",
  winner_id: 1,
  loser_id: 2,
  comment: "We are playing at Sommerville. On the Tufts tennis courts.",
  status: 2,
  score: '{1: "6:4", 2:, "7:6", 3: "6:5"}'
  }
])

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

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create([
  { id: 1,
    email: "lin@lin.com",
    password_digest: "lin",
    name: "Lina",
    age: 12,
    gender: "f",
    about_me: "this is some text about lin",
    token: "77e21e35a30f341e9fd28a2a06d789f9"
  }, {
    id: 2,
    email: "rad@rad.com",
    password_digest: "rad",
    name: "Rado",
    age: 14,
    gender: "m",
    about_me: "this is some text about rad",
    token: "a30f341e9fd28a77e21e352a06d789f9"
  }, {
    id: 3,
    email: "val@val.com",
    password_digest: "val",
    name: "Val",
    age: 14,
    gender: "m",
    about_me: "this is some text about val",
    token: "19fd28a2ae35a30f341e06d777e289f9"
  }, {
    id: 4,
    email: "alex@alex.com",
    password_digest: "alex",
    name: "Alex",
    age: 11,
    gender: "f",
    about_me: "this is some text about alex",
    token: "19fd28a2ae35a30f341e06d777e289f9"
  }
])

Address.delete_all
Address.create!([
  {
  #   id: 1,
  #   street: "Hillside Cir",
  #   city: "Somerville",
  #   state: "MA",
  #   zipcode: "02143",
  #   country: "US"
  # }, {
    id: 2,
    street: "Hillside Cir",
    city: "Somerville",
    state: "MA",
    zipcode: "02143",
    country: "US"
  }, {
    id: 3,
    street: "Dale",
    city: "Malden",
    state: "MA",
    zipcode: "02148",
    country: "US"
  }, {
    id: 4,
    street: "Dale",
    city: "Malden",
    state: "MA",
    zipcode: "02148",
    country: "US"
  }, {
    id: 5,
    street: "51 Melcher",
    city: "Boston",
    state: "MA",
    zipcode: "02210",
    country: "US"
  }
])

UserAddress.delete_all
UserAddress.create([
  {
  #   id: 1,
  #   user_id: 1,
  #   address_id: 1,
  #   name: "home"
  # },{
    id: 2,
    user_id: 1,
    address_id: 5,
    name: "work"
  },{
    id: 3,
    user_id: 2,
    address_id: 1,
    name: "home"
  },{
    id: 4,
    user_id: 3,
    address_id: 3,
    name: "home"
  }, {
    id: 5,
    user_id: 4,
    address_id: 4,
    name: "home"
  }
])

ProficiencyType.delete_all
ProficiencyType.create!([
  {
    id: 1,
    name: "Newbie",
    description: "What's tennis racquet"},
  {
    id: 2,
    name: "Rookie",
    description: "There is always hope!"},
  {
    id: 3,
    name: "Beginner",
    description: "Enjoy when you can, endure when you must"},
  {
    id: 4,
    name: "Talented",
    description: "I'm getting there, all I need is practice, practice, practice"},
  {
    id: 5,
    name: "Intermediate",
    scription: "The more I play the better I become"},
  {
    id: 6,
    name: "Seasoned",
    description: "I may not always win, but when I do, I do it with style"},
  {
    id: 7,
    name: "Advanced",
    description: "I have my own style"},
  {
    id: 8,
    name: "Proficient",
    description: "I'm just good at this!"},
  {
    id: 9,
    name: "Expert",
    description: "I'm Roger Federer's cousin"}
])

UserProficiencyType.delete_all
UserProficiencyType.create!([
  {
    id: 1,
    user_id: 1,
    proficiency_type_id: 3,
    user_comment: ""
  }, {
    id: 2,
    user_id: 2,
    proficiency_type_id: 2,
    user_comment: ""
  }, {
    id: 3,
    user_id: 3,
    proficiency_type_id: 4,
    user_comment: ""
  }, {
    id: 4,
    user_id: 4,
    proficiency_type_id: 3,
    user_comment: ""
  }
])

Game.create!([
  {
  id: 1,
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
    id: 1,
    game_id: 1,
    user_id: 1,
    rate: 5,
    user_comment: "It was a great game, need to be more efficient with the distance"
  }, {
    id: 2,
    game_id: 1,
    user_id: 2,
    rate: 4,
    user_comment: "Need to work on my backhand, cuz missing those ones"
  }
])

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
    email: 'lin@lin.com',
    password: 'lin',
    password_confirmation: 'lin',
    name: 'Demo User',
    age: 22,
    gender: 'f',
    about_me: 'This text represents user\'s description. Every user can type his/her interests and express his/her love for tennis!',
    token: '77e21e35a30f341e9fd28a2a06d789f9'
  }, {
    email: 'rad@rad.com',
    password: 'rad',
    password_confirmation: 'rad',
    name: 'Rado',
    age: 14,
    gender: 'm',
    about_me: 'this is some text about rad',
    token: 'a30f341e9fd28a77e21e352a06d789f9'
  }, {
    email: 'val@val.com',
    password: 'val',
    password_confirmation: 'val',
    name: 'Val',
    age: 14,
    gender: 'm',
    about_me: 'this is some text about val',
    token: '19fd28a2ae35a30f341e06d777e289f9'
  }, {
    email: 'alex@alex.com',
    password: 'alex',
    password_confirmation: 'alex',
    name: 'Alex',
    age: 11,
    gender: 'f',
    about_me: 'this is some text about alex',
    token: '19fd28a2ae35a30f341e06d777e289f9'
  }, {
    email: 'rozi@rozi.com',
    password: 'rozi',
    password_confirmation: 'rozi',
    name: 'Rozi',
    age: 14,
    gender: 'f',
    about_me: 'I am just starting with tennis',
    token: '19fd28a241e06d777e289f9ae35a30f3'
  }, {
    email: 'mark@mark.com',
    password: 'mark',
    password_confirmation: 'mark',
    name: 'Mark A',
    age: 14,
    gender: 'm',
    about_me: 'Tennis is what I do whenever I have some free time',
    token: '19fd28a241e06d555e289f9ae35a30f3'
  }, {
    email: 'krumo@krumo.com',
    password: 'krumo',
    password_confirmation: 'krumo',
    name: 'Krumo Y',
    age: 12,
    gender: 'm',
    about_me: 'Love to play, love to watch',
    token: '19fd65a241e06d877e289f9ae35a30f3'
  }
])

Address.destroy_all
Address.create!([
  {
    street: '67 Craigie Str',
    city: 'Somerville',
    state: 'MA',
    zipcode: '02143',
    country: 'USA',
    name: 'Home',
    lat: '42.388748',
    lng: '-71.110803'
  }, {
    street: '67 Craigie Str',
    city: 'Somerville',
    state: 'MA',
    zipcode: '02143',
    country: 'USA',
    name: 'Home',
    lat: '42.388748',
    lng: '-71.110803'
  }, {
    street: '10 Dale Str',
    city: 'Malden',
    state: 'MA',
    zipcode: '02148',
    country: 'USA',
    name: 'Home',
    lat: '42.433029',
    lng: '-71.054784'
  }, {
    street: '10 Dale Str',
    city: 'Malden',
    state: 'MA',
    zipcode: '02148',
    country: 'USA',
    name: 'Home',
    lat: '42.433029',
    lng: '-71.054784'
  }, {
    street: '42 Franklin Str',
    city: 'Somerville',
    state: 'MA',
    zipcode: '02143',
    country: 'USA',
    name: 'Home',
    lat: '42.383967',
    lng: '-71.084493'
  }, {
    street: '51 Melcher Str',
    city: 'Boston',
    state: 'MA',
    zipcode: '02210',
    country: 'USA',
    name: 'wework',
    lat: '42.349423',
    lng: '-71.05.0057'
  }, {
    street: '51 Melcher Str',
    city: 'Boston',
    state: 'MA',
    zipcode: '02210',
    country: 'USA',
    name: 'My office',
    lat: '42.349423',
    lng: '-71.05.0057'
  }, {
    street: '50 State Str',
    city: 'Boston',
    state: 'MA',
    zipcode: '02210',
    country: 'USA',
    name: 'Work',
    lat: '42.359052',
    lng: '-71.055843'
  }, {
    street: '212 Elm Cir',
    city: 'Somerville',
    state: 'MA',
    zipcode: '02143',
    country: 'USA',
    name: 'The office',
    lat: '42.394438',
    lng: '-71.121308'
  }
])

UserAddress.destroy_all
UserAddress.create([
  {
    user_id: 1,
    address_id: 1
  }, {
    user_id: 1,
    address_id: 6
  }, {
    user_id: 2,
    address_id: 2
  }, {
    user_id: 3,
    address_id: 3
  }, {
    user_id: 4,
    address_id: 4
  }, {
    user_id: 5,
    address_id: 5
  }, {
    user_id: 5,
    address_id: 8
  }, {
    user_id: 6,
    address_id: 7
  }, {
    user_id: 7,
    address_id: 9
  }
])

ProficiencyType.destroy_all
ProficiencyType.create!([
  {
    name: 'Newbie',
    description: "What's tennis racquet" },
  {
    name: 'Rookie',
    description: 'There is always hope!' },
  {
    name: 'Beginner',
    description: 'Enjoy when you can, endure when you must' },
  {
    name: 'Talented',
    description: "I'm getting there, all I need is practice, practice, practice" },
  {
    name: 'Intermediate',
    description: 'The more I play the better I become' },
  {
    name: 'Seasoned',
    description: 'I may not always win, but when I do, I do it with style' },
  {
    name: 'Advanced',
    description: 'I have my own style' },
  {
    name: 'Proficient',
    description: "I'm just good at this!" },
  {
    name: 'Expert',
    description: "I'm Roger Federer's cousin" }
])

UserProficiencyType.destroy_all
UserProficiencyType.create!([
  {
    user_id: 1,
    proficiency_type_id: 3,
    user_comment: 'I think I can do better'
  }, {
    user_id: 2,
    proficiency_type_id: 2,
    user_comment: ''
  }, {
    user_id: 3,
    proficiency_type_id: 4,
    user_comment: ''
  }, {
    user_id: 4,
    proficiency_type_id: 4,
    user_comment: ''
  }, {
    user_id: 5,
    proficiency_type_id: 2,
    user_comment: ''
  }, {
    user_id: 6,
    proficiency_type_id: 7,
    user_comment: ''
  }, {
    user_id: 7,
    proficiency_type_id: 6,
    user_comment: ''
  }
])

Game.create!([
  {
    datetime: DateTime.new(2015, 5, 1),
    duration: 50,
    place: 'Malden',
    winner_id: 1,
    loser_id: 2,
    comment: 'Be there at 8',
    status: 1,
    score: '6:4, 7:6, 6:4'
  }, {
    datetime: DateTime.new(2015, 5, 6),
    duration: 90,
    place: 'Somerville',
    winner_id: 2,
    loser_id: 1,
    comment: 'We are playing in Somerville. On the Tufts tennis courts.',
    status: 1,
    score: '6:7, 3:6, 7:1, 7:5, 5:7'
  }, {
    datetime: DateTime.new(2015, 5, 14),
    duration: 60,
    place: 'Somerville',
    winner_id: 6,
    loser_id: 1,
    comment: 'We are playing in Somerville. On the Tufts tennis courts again.',
    status: 1,
    score: '6:4, 6:1, 6:3'
  }, {
    datetime: DateTime.new(2015, 5, 21),
    duration: 45,
    place: 'Somerville',
    winner_id: 6,
    loser_id: 1,
    comment: 'We are playing in Somerville. On the Tufts tennis courts again.',
    status: 1,
    score: '6:2, 6:3, 6:4'
  }, {
    datetime: DateTime.new(2015, 5, 28),
    duration: 90,
    place: 'Somerville',
    winner_id: 6,
    loser_id: 1,
    comment: 'We are playing in Somerville. On the Tufts tennis courts again.',
    status: 1,
    score: '6:4, 6:1, 6:3'
  }, {
    datetime: DateTime.new(2015, 6, 6),
    duration: 90,
    place: 'Malden',
    winner_id: 1,
    loser_id: 2,
    comment: 'We are playing in Malden with Val and Alex',
    status: 1,
    score: '6:2, 6:1, 7:6'
  }, {
    datetime: DateTime.new(2015, 6, 7),
    duration: 90,
    place: 'Malden',
    winner_id: 1,
    loser_id: 2,
    comment: 'Second day playing with Val and Alex',
    status: 1,
    score: '6:4, 6:1, 7:6'
  }, {
    datetime: DateTime.new(2015, 6, 14),
    duration: 90,
    place: 'Malden',
    winner_id: 3,
    loser_id: 1,
    comment: 'I am getting better at this, still suck pretty much',
    status: 1,
    score: '6:2, 6:4, 6:4'
  }, {
    datetime: DateTime.new(2015, 6, 14),
    duration: 90,
    place: 'Medford',
    winner_id: 1,
    loser_id: 5,
    comment: 'Playing with Rozi is always fun. Good game',
    status: 1,
    score: '6:2, 6:4, 6:3'
  }, {
    datetime: DateTime.new(2015, 7, 12),
    duration: 90,
    place: 'Malden',
    winner_id: 4,
    loser_id: 1,
    comment: 'Playing with Alex is always fun. Good game',
    status: 1,
    score: '6:5, 6:4, 6:3'
  }, {
    datetime: DateTime.new(2015, 7, 21),
    duration: 90,
    place: 'Cambridge',
    winner_id: 4,
    loser_id: 1,
    comment: 'Playing with Alex is always fun. Good game',
    status: 1,
    score: '6:5, 6:4, 6:3'
  }, {
    datetime: DateTime.new(2015, 8, 2),
    duration: 90,
    place: 'Everett',
    winner_id: 1,
    loser_id: 3,
    comment: 'Playing with Val is always fun. Nice game',
    status: 1,
    score: '6:5, 6:4, 6:3'
  }, {
    datetime: DateTime.new(2015, 8, 4),
    duration: 90,
    place: 'Cambridge',
    winner_id: 1,
    loser_id: 6,
    comment: 'Playing with Krum is always fun. Good game',
    status: 1,
    score: '6:2, 6:4, 6:3'
  }, {
    datetime: DateTime.new(2015, 8, 10),
    duration: 90,
    place: 'Malden',
    winner_id: 3,
    loser_id: 1,
    comment: 'This time Val\'s got me',
    status: 1,
    score: '6:2, 6:3, 6:2'
  }, {
    datetime: DateTime.new(2015, 8, 11),
    duration: 90,
    place: 'Somerville',
    winner_id: 1,
    loser_id: 2,
    comment: 'Playing with Rado is always fun. Good game',
    status: 1,
    score: '6:2, 7:6, 6:3'
  }
])

GameRating.create!([
  {
    game_id: 1,
    user_id: 1,
    rate: 5,
    user_comment: 'It was a great game, need to be more efficient with the distance'
  }, {
    game_id: 1,
    user_id: 2,
    rate: 4,
    user_comment: 'Need to work on my backhand, cuz missing those ones'
  }
])

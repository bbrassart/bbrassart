# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Blog.destroy_all
puts "Empty DB"
Blog.create(
title: Faker::Name.name,
text: Faker::Lorem.sentence(3),
date: DateTime.now
)


Year.destroy_all
first = Year.create(title: 2015)

first.experiences.create(
starting_date: DateTime.new(2015, 8, 1),
ending_date: DateTime.new(2015, 12, 1),
title: "Teaching assistant",
company_name: "IronHack",
location: "Barcelona",
description: "After graduating from IronHack, I'm now working as a teaching
  assistant for the current web development bootcamp in Barcelona.
  - Supporting the students with their learning activities, making sure all of them
  understand the most important concepts of programming.<br>
  - Help organizing classes and workshops, working closely with the teachers and
  public speakers.",
company_logo: "https://fdemadrid.files.wordpress.com/2013/10/ironhack_logonegro.png")

Year.create(title: 2014)
Year.create(title: 2013)
Year.create(title: 2012)
Year.create(title: 2011)
Year.create(title: 2010)
Year.create(title: 2009)

puts "DB filled"

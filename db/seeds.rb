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
title: "Developers, developers, developers…",
currentIndex: 1,
image_caption: "Code in GitHub",
text: "Fifteen years ago, <a href='https://www.youtube.com/watch?v=8To-6VIJZRE' target=_blank>Steve Ballmer</a> was going crazy for developers. I love that clip.
  That’s bold (no poke intended ☺) and it will remain in tech history forever.</p>
  <p>Now wait a second, why would one of the most important CEO go crazy, lose his breathe
  and, by doing so, end up in the YouTube ‘Comedy’ section? That should give us an
  idea of how <b>developers work is crucial</b>.</p>
  <p>That was 15 years ago. Smartphones and apps did not even exist. Mark Zuckerberg probably
  didn’t even know what social media was.</p>
  <p>2015 will be the year of home automation,
  <a href='http://attackofthefanboy.com/news/oculus-rift-pre-e3-press-conference-set-for-june-11th-price-and-release-date-announcements-possible/' target=_blank>
    virtual reality headsets</a> and
  a lot, lot more. Facebook Messenger for Android has now been downloaded
  <a href='http://techcrunch.com/2015/06/09/the-new-facebook/' target=_blank>1 billion times</a>. To sum it up, content, users
  interactions, <b>information is everywhere</b> and
  it’s just the beginning. Nowadays, everyone can comment a piece of news, share
  high-quality content, shoot videos in 4k or just express their opinion… on @Medium.</p>
  <p>I’ve always been fascinated by web technologies and, if they were asked, some of my
  friends will probably tell you that I’m… not a nerd but nearly ☺. #YOLO I decided it
  was time for me to <b>learn how to code</b>, time for me to dive in the backbone of all
  those apps we use on a daily basis. I started digging into those lines of weird-looking
  characters some months ago now and it’s just fascinating.</p>
  <p>On Monday, I will start
  the IronHack bootcamp in Barcelona and I’m thrilled. I just can’t wait to actually
  build some ideas I have in mind. And do not forget: “Web developers, web developers,
  web developers” ☺",
date: DateTime.new(2015, 6, 8),
author: "Baptiste Brassart",
image: "https://s3-us-west-2.amazonaws.com/bbrassart/github.jpg",
author_logo: "https://s3-us-west-2.amazonaws.com/bbrassart/bbrassart_avatar.jpg",
tags: ["development", "tech", "code"]
)

Blog.create(
title: "Du GIF en barre: les meilleures applis iPhone",
currentIndex: 0,
image_caption: "GIF up your life",
image: "https://s3-us-west-2.amazonaws.com/bbrassart/gif.jpg",
text: "eruygfkbgrsbukrwebsykuef",
date: DateTime.new(2014, 12, 12),
author: "Baptiste Brassart",
author_logo: "https://s3-us-west-2.amazonaws.com/bbrassart/bbrassart_avatar.jpg",
tags: ["iphone", "gif", "applis", "ios"]
)


Year.destroy_all
first = Year.create(title: 2015)

first.experiences.create(
starting_date: DateTime.new(2015, 8, 1),
ending_date: DateTime.new(2015, 12, 1),
title: "Teaching assistant",
tags: ["code", "javascript", "ruby on rails", "html", "css"],
company_name: "IronHack",
location: "Barcelona",
description: "After graduating from IronHack, I'm now working as a teaching
  assistant for the current web development bootcamp in Barcelona.
  - Supporting the students with their learning activities, making sure all of them
  understand the most important concepts of programming.<br>
  - Help organizing classes and workshops, working closely with the teachers and
  public speakers.",
company_logo: "https://fdemadrid.files.wordpress.com/2013/10/ironhack_logonegro.png"
)

first.experiences.create(
  starting_date: DateTime.new(2015, 6, 1),
  ending_date: DateTime.new(2015, 8, 1),
  tags: ["code", "javascript", "ruby on rails", "html", "css"],
  title: "Student",
  company_name: "IronHack",
  location: "Barcelona",
  description: "<p>- Intensive programming courses for developers.
  - Work with different technologies including Ruby on Rails, Javascript, HTML5, CSS3, Git
  - Focusing on clean code principles, design patterns and test driven development.
  - Using agile development which teaches us the best way to build and deliver things done
  in an easy and agile way, from testing to deployment.</p>",
  company_logo: "https://fdemadrid.files.wordpress.com/2013/10/ironhack_logonegro.png"
)

second = Year.create(title: 2014)
second.experiences.create(
  starting_date: DateTime.new(2010, 12, 1),
  ending_date: DateTime.new(2014, 12, 1),
  tags: ["editorial", "web", "microsoft", "social media", "content"],
  title: "Web journalist / Social media manager",
  company_name: "Softonic",
  location: "Barcelona",
  description: "<p>- Writing news and long-form articles about software and technology in a fast-paced international environment
- Supervising, with the Microsoft specialists team, Softonic editorial coverage for Microsoft major events (e.g. launch of Windows 8)
- Contacting app founders and VPs for exclusive content (e.g. Microsoft http://bit.ly/MarcJalabert and Frontback http://bit.ly/FredericDellaFaille)
- Monitoring content performance using Google Analytics and many other KPIs
- Writing new software / apps reviews, curating the existing database
- Managing Softonic France’s social media accounts",
  company_logo: "https://upload.wikimedia.org/wikipedia/en/a/ad/Softonic.com_logo.png"
)
third = Year.create(title: 2013)
third.experiences.create(
  starting_date: DateTime.new(2010, 12, 1),
  ending_date: DateTime.new(2014, 12, 1),
  tags: ["editorial", "web", "microsoft", "social media", "content"],
  title: "Web journalist / Social media manager",
  company_name: "Softonic",
  location: "Barcelona",
  description: "<p>- Writing news and long-form articles about software and technology in a fast-paced international environment
- Supervising, with the Microsoft specialists team, Softonic editorial coverage for Microsoft major events (e.g. launch of Windows 8)
- Contacting app founders and VPs for exclusive content (e.g. Microsoft http://bit.ly/MarcJalabert and Frontback http://bit.ly/FredericDellaFaille)
- Monitoring content performance using Google Analytics and many other KPIs
- Writing new software / apps reviews, curating the existing database
- Managing Softonic France’s social media accounts",
  company_logo: "https://upload.wikimedia.org/wikipedia/en/a/ad/Softonic.com_logo.png"
)
fourth = Year.create(title: 2012)
fourth.experiences.create(
  starting_date: DateTime.new(2010, 12, 1),
  ending_date: DateTime.new(2014, 12, 1),
  tags: ["editorial", "web", "microsoft", "social media", "content"],
  title: "Web journalist / Social media manager",
  company_name: "Softonic",
  location: "Barcelona",
  description: "<p>- Writing news and long-form articles about software and technology in a fast-paced international environment
- Supervising, with the Microsoft specialists team, Softonic editorial coverage for Microsoft major events (e.g. launch of Windows 8)
- Contacting app founders and VPs for exclusive content (e.g. Microsoft http://bit.ly/MarcJalabert and Frontback http://bit.ly/FredericDellaFaille)
- Monitoring content performance using Google Analytics and many other KPIs
- Writing new software / apps reviews, curating the existing database
- Managing Softonic France’s social media accounts",
  company_logo: "https://upload.wikimedia.org/wikipedia/en/a/ad/Softonic.com_logo.png"
)
fifth = Year.create(title: 2011)
fifth.experiences.create(
  starting_date: DateTime.new(2010, 12, 1),
  ending_date: DateTime.new(2014, 12, 1),
  tags: ["editorial", "web", "microsoft", "social media", "content"],
  title: "Web journalist / Social media manager",
  company_name: "Softonic",
  location: "Barcelona",
  description: "<p>- Writing news and long-form articles about software and technology in a fast-paced international environment
- Supervising, with the Microsoft specialists team, Softonic editorial coverage for Microsoft major events (e.g. launch of Windows 8)
- Contacting app founders and VPs for exclusive content (e.g. Microsoft http://bit.ly/MarcJalabert and Frontback http://bit.ly/FredericDellaFaille)
- Monitoring content performance using Google Analytics and many other KPIs
- Writing new software / apps reviews, curating the existing database
- Managing Softonic France’s social media accounts",
  company_logo: "https://upload.wikimedia.org/wikipedia/en/a/ad/Softonic.com_logo.png"
)

sixth = Year.create(title: 2010)
sixth.experiences.create(
  starting_date: DateTime.new(2010, 12, 1),
  ending_date: DateTime.new(2014, 12, 1),
  tags: ["editorial", "web", "microsoft", "social media", "content"],
  title: "Web journalist / Social media manager",
  company_name: "Softonic",
  location: "Barcelona",
  description: "<p>- Writing news and long-form articles about software and technology in a fast-paced international environment
- Supervising, with the Microsoft specialists team, Softonic editorial coverage for Microsoft major events (e.g. launch of Windows 8)
- Contacting app founders and VPs for exclusive content (e.g. Microsoft http://bit.ly/MarcJalabert and Frontback http://bit.ly/FredericDellaFaille)
- Monitoring content performance using Google Analytics and many other KPIs
- Writing new software / apps reviews, curating the existing database
- Managing Softonic France’s social media accounts",
  company_logo: "https://upload.wikimedia.org/wikipedia/en/a/ad/Softonic.com_logo.png"
)

sixth.experiences.create(
  starting_date: DateTime.new(2010, 12, 1),
  ending_date: DateTime.new(2014, 12, 1),
  tags: ["editorial", "web", "microsoft", "social media", "content"],
  title: "Web journalist / Social media manager",
  company_name: "Softonic",
  location: "Barcelona",
  description: "<p>- Writing news and long-form articles about software and technology in a fast-paced international environment
- Supervising, with the Microsoft specialists team, Softonic editorial coverage for Microsoft major events (e.g. launch of Windows 8)
- Contacting app founders and VPs for exclusive content (e.g. Microsoft http://bit.ly/MarcJalabert and Frontback http://bit.ly/FredericDellaFaille)
- Monitoring content performance using Google Analytics and many other KPIs
- Writing new software / apps reviews, curating the existing database
- Managing Softonic France’s social media accounts",
  company_logo: "https://upload.wikimedia.org/wikipedia/en/a/ad/Softonic.com_logo.png"
)


puts "DB filled"

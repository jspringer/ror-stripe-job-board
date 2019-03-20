# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
  id: 2,
  name: "Jason S.",
  email: "jason@example2.com",
  password: "password",
  password_confirmation: "password"
)
user.save!

user2 = User.new(
  id: 3,
  name: "JS",
  email: "jason@example2.com",
  password: "password2",
  password_confirmation: "password2"
)
user2.save!

Job.create!([{
  title: "React Engineer",
  description: "Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Maecenas sed diam eget risus varius blandit sit amet non magna. Aenean lacinia bibendum nulla sed consectetur. Donec sed odio dui. Venenatis dapibus posuere. Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur blandit tempus porttitor. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  url: "https://facebook.com",
  apply_url: "https://facebook.com/apply",
  job_type: "Full-time",
  location: "San Francisco, CA",
  job_author: "Facebook",
  user_id: user.id,
  avatar: Rails.root.join("app/assets/images/facebook.jpg").open,
  remote_ok: false
},
{
  title: "Product Designer",
  description: "Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Maecenas sed diam eget risus varius blandit sit amet non magna. Aenean lacinia bibendum nulla sed consectetur. Donec sed odio dui. Venenatis dapibus posuere. Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur blandit tempus porttitor. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  url: "https://slack.com",
  apply_url: "https://slack.com/apply",
  job_type: "Contract",
  location: "San Francisco, CA",
  job_author: "Slack",
  user_id: user.id,
  avatar: Rails.root.join("app/assets/images/slack.jpg").open,
  remote_ok: false
},
{
  title: "UI/UX Designer",
  description: "Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Maecenas sed diam eget risus varius blandit sit amet non magna. Aenean lacinia bibendum nulla sed consectetur. Donec sed odio dui. Venenatis dapibus posuere. Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur blandit tempus porttitor. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  url: "https://trello.com",
  apply_url: "https://trello.com/apply",
  job_type: "Part-time",
  location: "New York, NY",
  job_author: "Trello",
  user_id: user2.id,
  avatar: Rails.root.join("app/assets/images/trello.jpg").open,
  remote_ok: true
},
{
  title: "Platform Engineer",
  description: "Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Maecenas sed diam eget risus varius blandit sit amet non magna. Aenean lacinia bibendum nulla sed consectetur. Donec sed odio dui. Venenatis dapibus posuere. Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur blandit tempus porttitor. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  url: "https://wordpress.org",
  apply_url: "https://wordpress.org/apply",
  job_type: "Freelance",
  location: "Anywhere",
  job_author: "WordPress",
  user_id: user.id,
  avatar: Rails.root.join("app/assets/images/wordpress.png").open,
  remote_ok: true
},
{
  title: "Rails Engineer",
  description: "Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Maecenas sed diam eget risus varius blandit sit amet non magna. Aenean lacinia bibendum nulla sed consectetur. Donec sed odio dui. Venenatis dapibus posuere. Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur blandit tempus porttitor. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  url: "https://basecamp.com",
  apply_url: "https://basecamp.com/apply",
  job_type: "Full-time",
  location: "Chicago",
  job_author: "Basecamp",
  user_id: user.id,
  avatar: Rails.root.join("app/assets/images/basecamp.jpg").open,
  remote_ok: true
},
{
  title: "Product Manager",
  description: "Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Maecenas sed diam eget risus varius blandit sit amet non magna. Aenean lacinia bibendum nulla sed consectetur. Donec sed odio dui. Venenatis dapibus posuere. Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur blandit tempus porttitor. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Vestibulum id ligula porta felis euismod semper. Maecenas faucibus mollis interdum. Maecenas sed diam eget risus varius blandit sit amet non magna.",
  url: "https://twitter.com",
  apply_url: "https://twitter.com/apply",
  job_type: "Part-time",
  location: "California",
  job_author: "Twitter",
  user_id: user.id,
  avatar: Rails.root.join("app/assets/images/twitter.jpg").open,
  remote_ok: true
},
{
  title: "Data Scientist",
  description: "As a Data Scientist on Uber for Business you will work hand in hand with the Product, Marketing, Design, Sales and Engineering teams to keep product development data driven and informed. Candidates are expected to act with high levels of autonomy to guide their team’s roadmaps and build their data products. What You’ll Do: 1. Building a predictive model to identify and differentiate business trips from personal trips. 2. Building conversion propensity models to nudge the correct users to adopt our Business class products. 3. Optimize and measure the business traveller experience.",
  url: "https://www.uber.com/",
  apply_url: "https://www.uber.com/careers/list/48315/",
  job_type: "Full-time",
  location: "San Jose, CA",
  job_author: "Uber",
  user_id: user2.id,
  avatar: Rails.root.join("app/assets/images/uber.png").open,
  remote_ok: false
},
{
  title: "Product Manager - Trends",
  description: "The Consumer Products team is looking for an experienced product manager to lead discovery efforts at Twitter on the Trends & Explore team. In this role you will drive our vision for the future of Trends on Twitter to help people be in the know with what’s happening in the world and discover events, topics, and communities they care about. If you like working on compelling problems that have real world impact at-scale, love relevance problems, and are passionate about helping people, this role is for you! Requirements: 1. 5+ years of product management experience. 2. Experience working on a significant product roadmap from strategic inception to launch. 3. Computer science or engineering background strongly preferred. 4. Background in machine learning, ranking, or recommendations is preferred.",
  url: "https://twitter.com/",
  apply_url: "https://careers.twitter.com/en/work-for-twitter/201902/product-manager-trends.html",
  job_type: "Full-time",
  location: "San Francisco, CA",
  job_author: "Twitter",
  user_id: user.id,
  avatar: Rails.root.join("app/assets/images/twitter.jog").open,
  remote_ok: false
},
{
  title: "Senior Product Designer",
  description: "We are looking for an experienced designer to be the design owner and strategic partner with the technology and product teams on our key initiatives. Someone who is passionate about developing strategies based off of insights of real people, has the mastery of their craft to turn these insights into beautifully designed products (both interactions and visuals) and inspires the organization by showing/prototyping what is possible before it is built. Who you are: 1. You have at least 7 years of experience designing at consumer-focused tech or media companies; experience designing for mobile is a plus. 2. You are an incredible designer with amazing design chops. You’ve shipped many consumer products over the years, and understand what it takes to create awesome, consumer-oriented experiences.",
  url: "https://spotify.com/",
  apply_url: "https://www.spotifyjobs.com/job/senior-product-designer-onkg9fwg/",
  job_type: "Full-time",
  location: "Stockholm, Sweden",
  job_author: "Spotify",
  user_id: user2.id,
  avatar: Rails.root.join("app/assets/images/spotify.png").open,
  remote_ok: false
}
])
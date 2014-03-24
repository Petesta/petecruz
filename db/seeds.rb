# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "admin@admin.com", full_name: "admin", password: "admin", password_confirmation: "admin", permissions: 0)

Post.create(body:"Scala stuff", title: "Scala", user_id: 1)
Post.create(body:"Haskell stuff", title: "Haskell", user_id: 1)
Post.create(body:"Ruby stuff", title: "Ruby", user_id: 1)
Post.create(body:"Rails stuff", title: "Rails", user_id: 1)
Post.create(body:"Chef stuff", title: "Chef", user_id: 1)
Post.create(body:"Linux stuff", title: "Linux", user_id: 1)
Post.create(body:"AWS stuff", title: "AWS", user_id: 1)
Post.create(body:"Vim stuff", title: "Vim", user_id: 1)
Post.create(body:"Scalaz stuff", title: "Scalaz", user_id: 1)
Post.create(body:"PostreSQL stuff", title: "PostgreSQL", user_id: 1)
Post.create(body:"Cassandra stuff", title: "Cassandra", user_id: 1)
Post.create(body:"Real-time stuff", title: "Real-time", user_id: 1)

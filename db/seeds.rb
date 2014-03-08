# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "admin@admin.com", full_name: "admin", password: "admin", password_confirmation: "admin")

Post.create(body:"Chef stuff", title: "Chef", user_id: 1)
Post.create(body:"Rails stuff", title: "Rails", user_id: 1)
Post.create(body:"Scala stuff", title: "Scala", user_id: 1)

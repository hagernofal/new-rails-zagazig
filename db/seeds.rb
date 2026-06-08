# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
user1 = User.create(name: "Hager", email: "hager@test.com")
user2 = User.create(name: "Ali", email: "ali@test.com")

post1 = Post.create(title: "Post 1", content: "Hello", user: user1)
post2 = Post.create(title: "Post 2", content: "Hi", user: user2)

editor1 = Editor.create(name: "Editor 1")
editor2 = Editor.create(name: "Editor 2")

post1.editors << editor1
post2.editors << editor2
require_relative '../app/models.rb'

User.create!([{name: "Luciano"}, {name: "Mario"}])

Post.create!(title: "My name is Lucci", body: "Some text", user_id: 1)

Comment.create!(body: "This article is awesome", post_id: 1, user_id: 2)

puts "Your database has been seeded."

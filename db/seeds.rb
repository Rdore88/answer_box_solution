# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  id: 1,
  name: 'user1',
  email: 'hey@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

User.create!(
id: 2,
name: 'user2',
email: 'robby@dore.gmail.com',
password: 'password',
password_confirmation: 'password'
)

Question.create!(
  id: 1,
  title: "My Very First question",
  user_id: 1,
  question:
  %Q{### There Is Something You Should Know!

  This is my very first post using markdown!

  How do you like it?  I learned this from [RichOnRails.com](http://richonrails.com/articles/rendering-markdown-with-redcarpet)!}
)

Question.create!(
  id: 2,
  title: "My Second Post",
  user_id: 1,
  question:
  %Q{### My List of Things To Do!

  Here is the list of things I wish to do!

  * write more posts
  * write even more posts
  * write even more posts!}
)

Answer.create!(
  id: 1,
  user_id: 2,
  question_id: 1,
  body: "This is the best answer in the worldr"
)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(user_name: 'user1', first_name: 'fn1', last_name: 'ln1', email: 'user1@gmail.com', password: 'user1')
user2 = User.create(user_name: 'user2', first_name: 'fn2', last_name: 'ln2', email: 'user2@gmail.com', password: 'user2')
user3 = User.create(user_name: 'user3', first_name: 'fn3', last_name: 'ln3', email: 'user3@gmail.com', password: 'user3')

post1 = Post.create(content: 'post1 content', user: user1)
post2 = Post.create(content: 'post2 content', user: user1)
post3 = Post.create(content: 'post3 content', user: user1)

post4 = Post.create(content: 'post4 content', user: user2)
post5 = Post.create(content: 'post5 content', user: user2)
post6 = Post.create(content: 'post6 content', user: user2)

post7 = Post.create(content: 'post7 content', user: user3)
post8 = Post.create(content: 'post8 content', user: user3)
post9 = Post.create(content: 'post9 content', user: user3)

comment1 = Comment.create(user: user1, post: post1, content: 'this is a comment of user1 for post1')
comment2 = Comment.create(user: user1, post: post4, content: 'this is a comment of user1 for post4')
comment3 = Comment.create(user: user2, post: post1, content: 'this is a comment of user2 for post1')
comment4 = Comment.create(user: user1, post: post1, content: 'this is a comment of user1 for post1')
comment5 = Comment.create(user: user3, post: post1, content: 'this is a comment of user3 for post1')
comment6 = Comment.create(user: user2, post: post4, content: 'this is a comment of user2 for post4')
comment7 = Comment.create(user: user3, post: post4, content: 'this is a comment of user3 for post4')
comment8 = Comment.create(user: user1, post: post4, content: 'this is a comment of user1 for post4')
comment9 = Comment.create(user: user3, post: post7, content: 'this is a comment of user3 for post7')


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
User.create!(name:'Niyaz', email: 'admin1@example.com', password: 'adminadmin', password_confirmation: 'adminadmin')


counter_for_ruby = 0
counter_for_html = 0
5.times do
  counter_for_ruby += 1
  Test.create!(name: 'Ruby on rails CW#' + counter_for_ruby.to_s)
  counter_for_html += 1
  Test.create!(name: 'HTML CW#' + counter_for_html.to_s)
end

20.times do
  Question.create!(description: Faker::Lorem.sentence + '?', test_id: rand(1..5))
end

40.times do
  Answer.create!(description: Faker::Lorem.sentence + '?', question_id: rand(1..20))
end
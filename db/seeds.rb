# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  Post.create(
    title: Faker::Lorem.sentence,
    contents: Faker::Lorem.paragraphs(15).join,
    public_date: Faker::Time.between(1.year.ago, Time.now, :all).to_date
  )
end

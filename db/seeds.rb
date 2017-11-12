# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


hiking = Interest.create(name: "hiking")
dog = Interest.create(name: "dog walking")
aerobics = Interest.create(name: "water aerobics")
cycling = Interest.create(name: "cycling")
yoga = Interest.create(name: "yoga")
dancing = Interest.create(name: "dancing")


us1 = User.create(name: FactoryHelper::Name.female_first_name, gender: "female", avatar: "http://via.placeholder.com/350x350", language: "english", city: "Vancouver", country: "Canada", review: FactoryHelper::Lorem.paragraph(2, true) , biography: FactoryHelper::Lorem.sentence(3, true))
us2 = User.create(name: FactoryHelper::Name.female_first_name, gender: "female", avatar: "http://via.placeholder.com/350x350", language: "french",city: "Richmond", country: "Canada", review: FactoryHelper::Lorem.paragraph(2, true) , biography: FactoryHelper::Lorem.sentence(3, true))
us3 = User.create(name: FactoryHelper::Name.female_first_name, gender: "female", avatar: "http://via.placeholder.com/350x350", language: "english", city: "Burnaby", country: "Canada", review: FactoryHelper::Lorem.paragraph(2, true) , biography: FactoryHelper::Lorem.sentence(3, true))
us4 = User.create(name: FactoryHelper::Name.female_first_name, gender: "female", avatar: "http://via.placeholder.com/350x350", language: "french", city: "Vancouver", country: "Canada", review: FactoryHelper::Lorem.paragraph(2, true) , biography: FactoryHelper::Lorem.sentence(3, true))

us5 = User.create(name: FactoryHelper::Name.female_first_name, gender: "female", avatar: "http://via.placeholder.com/350x350", language: "german", city: "Richmond", country: "Canada", review: FactoryHelper::Lorem.paragraph(2, true) , biography: FactoryHelper::Lorem.sentence(3, true))
us6 = User.create(name: FactoryHelper::Name.male_first_name, gender: "male", avatar: "http://via.placeholder.com/350x350", language: "english", city: "Burnaby", country: "Canada", review: FactoryHelper::Lorem.paragraph(2, true) , biography: FactoryHelper::Lorem.sentence(3, true))
us7 = User.create(name: FactoryHelper::Name.male_first_name, gender: "male", avatar: "http://via.placeholder.com/350x350", language: "french", city: "Vancouver", country: "Canada", review: FactoryHelper::Lorem.paragraph(2, true) , biography: FactoryHelper::Lorem.sentence(3, true))
us8 =User.create(name: FactoryHelper::Name.male_first_name, gender: "male", avatar: "http://via.placeholder.com/350x350", language: "german", city: "Richmond", country: "Canada", review: FactoryHelper::Lorem.paragraph(2, true) , biography: FactoryHelper::Lorem.sentence(3, true))
us9 = User.create(name: FactoryHelper::Name.male_first_name, gender: "male", avatar: "http://via.placeholder.com/350x350", language: "english", city: "Burnaby", country: "Canada", review: FactoryHelper::Lorem.paragraph(2, true) , biography: FactoryHelper::Lorem.sentence(3, true))
us10 = User.create(name: FactoryHelper::Name.male_first_name, gender: "male", avatar: "http://via.placeholder.com/350x350", language: "german", city: "Vancouver", country: "Canada", review: FactoryHelper::Lorem.paragraph(2, true) , biography: FactoryHelper::Lorem.sentence(3, true))

10.times do |n|
  UserInterest.create(user_id: n, interest_id: rand(1..6))
  UserInterest.create(user_id: n, interest_id: rand(1..6))
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
mom_1 = User.create!(name: "Samantha",
email: "so@gmail.com",
phone: "4231563232",
bio: "Banana",
location: "Denver, CO",
donor_status: 0)

mom_2 = User.create!(name: "Betty",
email: "beegee@gmail.com",
phone: "4231563232",
bio: "Banana milk",
location: "Denver, CO",
donor_status: 0,)

mom_3 = User.create!(name: "Susana",
email: "osusana@gmail.com",
phone: "4231563232",
bio: "Banana milkshake",
location: "Denver, CO",
donor_status: 0)

mom_1.requests.create!(requested_at: 2.week.ago)

mom_1.requests.create!(requested_at: 2.days.ago)

mom_2.requests.create!(requested_at: 4.week.ago)

mom_2.requests.create!(requested_at: 3.week.ago)

mom_3.requests.create!(requested_at: 5.week.ago)

mom_3.requests.create!(requested_at: 4.week.ago)

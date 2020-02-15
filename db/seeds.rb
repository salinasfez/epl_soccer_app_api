# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 10.times do
#     User.create(
#         name: Faker::Name.name,
#         favorite_team: Faker::Team.name,
#         pick_points: Faker::Number.number(digits: 2),
#         current_points: Faker::Number.number(digits: 2)
#     )
# end
5.times do
    MatchDay.create(
        day: Faker::Number.number(digits: 1),
        game: 'Man U vs. Man City',
        team_a: 'Manchester United',
        team_a_points: 3,
        team_b: "Manchester City",
        team_b_points: 0
    )
end

puts "Seeded database"
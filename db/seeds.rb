# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Goal.destroy_all

kyle = {
  email: "kyledemo@gmail.com",
  password: "password",
  height: 70,
  gender: "M",
  birth_date: Date.new(1989, 9, 5),
  username: "Kyle",
  goals_attributes: [
    {
      current_weight: 160,
      goal_weight: 170,
      activity_level: "Spend a good part of the day on your feet (e.g. teacher, salesperson)",
      goal_description: "Gain 1 pound per week"
    }
  ]
}

User.create(kyle)

40.times do
  Food.create(
  brand: Faker::Food.dish,
  name: Faker::Food.ingredient,
  calories: (rand * 150).round,
  carbohydrates: (rand * 50).round,
  protein: (rand * 25).round,
  fats: (rand * 40).round,
  serving_size: Faker::Food.measurement
  )
end

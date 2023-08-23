# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(
  first_name: 'John',
  last_name: 'Doe',
  address: 'Knowhere',
  e_mail: 'John@email.com'
)

10.times do |i|
  User.create(
    first_name: "User #{i+1}",
    last_name: "Lname #{i+1}",
    address: "address #{i+1}",
    e_mail: "user#{i+1}@email.com"
  )
end

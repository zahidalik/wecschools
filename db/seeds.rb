# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
unless User.any?
  user = User.create!(username: "myonapp",
                    full_name: "Zahid Ali Khan",
                    email: "muwahid2@gmail.com",
                    contact: "0623956661",
                    joining_date: Date.today,
                    password: "zahidali5")
  user.roles.build(name: "super admin")
  user.save!
end
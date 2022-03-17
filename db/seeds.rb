# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

supplier = Supplier.new(name: "Penguin Publishing", email: "example@publishing", phone_number: "000-000-0000")
supplier.save

supplier = Supplier.new(name: "Publishing! Publishing! Publishing!", email: "example@moreandmorepublishing", phone_number: "111-111-1111")
supplier.save

supplier = Supplier.new(name: "Books Bodega Bookies", email: "example@moreandmorepublishing", phone_number: "111-111-1111")
supplier.save
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying all gardens"

Garden.destroy_all

puts "Creating gardens"

eden = Garden.new(name: "Eden", banner_url: "https://images.unsplash.com/photo-1572085313466-6710de8d7ba3?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
eden.save!

garden = Garden.new(name: "Balfour", banner_url: "https://images.unsplash.com/photo-1580600301354-0ce8faef576c?q=80&w=1976&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
garden.save!

puts "Created #{Garden.count} gardens"

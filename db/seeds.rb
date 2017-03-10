# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Service.delete_all
Service.create([{name: 'Wash and Fold'},{name: 'Wash and Iron'},{name: 'Dry Clean'}])

Address.delete_all
Address.create([{full_address: 'Test 1'},{full_address: 'Test 2'},{full_address: 'Test 3'}])

Status.delete_all
Status.create([{name: "Ready to pickup"}, {name: "Picked"}, {name: "Ready for wash"}, {name: "Under Washing"}, {name: "Ready to dispach"}, {name: "Out for delivery"}, {name: "Delivered"}])
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
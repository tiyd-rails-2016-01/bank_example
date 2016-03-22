# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do |i|
  Branch.create!(name: "Branch #{i}")
end

1000.times do |i|
  Account.create!(owner: "Owner #{i+1}", branch_id: rand(100)+1)
end

10000.times do |i|
  Expense.create!(payee: "Landlord", amount: rand(10000), account_id: rand(1000)+1)
end

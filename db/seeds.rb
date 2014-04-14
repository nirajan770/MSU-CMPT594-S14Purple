# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create!(name: "Nirajan Thapa",
                         email: "nirajan@mail.montclair.edu",
                         password: "nirajan",
                         password_confirmation: "nirajan",
                         admin: true)
user= User.create!(name: "Serkan",
                         email: "srknyavuz86@gmail.com",
                         password: "serkan",
                         password_confirmation: "serkan")
User.create!(name:"Steven Lin", email: "steven.lin1986@gmail.com",
			password: "steven", password_confirmation: "steven")
User.create!(name:"Silpa", email: "silpacreddy@gmail.com",
			password: "silpa", password_confirmation: "silpa")
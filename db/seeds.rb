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
admin.toggle!(:admin)
user= User.create!(name: "Serkan",
                         email: "srknyavuz86@gmail.com",
                         password: "serkan",
                         password_confirmation: "serkan")

students= [{:name=> 'Robert Pires', :address=>'120 Bloomfield Avenue', :city=>'Caldwell', :state=>'NJ',
			:country=>'US', :zip=>'07006', :phone=>'555-555-5555', :email=>'robert@aol.com'},
			{:name=> 'Jack Black', :address=>'12 Fairfield Avenue', :city=>'Verona', :state=>'NJ',
			:country=>'US', :zip=>'07044', :phone=>'333-555-5335', :email=>'jack@aol.com'}
			]

students.each do |student|
	Student.create!(student)
end

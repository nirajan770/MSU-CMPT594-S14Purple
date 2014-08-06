# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



admin = User.create!(name: "Admin Admin",
                         email: "admin1234@gmail.com",
                         password: "admin1234",
                         password_confirmation: "admin1234",
                         admin: true)				 


students= [{:name=> 'Alice Key', :address=>'120 Bloomfield Avenue', :city=>'Caldwell', :state=>'NJ',
			:country=>'US', :zip=>'07006', :phone=>'555-555-5555', :email=>'alicekey@gmail.com'},
			{:name=> 'Jack Back', :address=>'12 Fairfield Avenue', :city=>'Verona', :state=>'NJ',
			:country=>'US', :zip=>'07044', :phone=>'333-555-5335', :email=>'jackblack@aol.com'}
			]

students.each do |student|
	Student.create!(student)
end

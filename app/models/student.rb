class Student < ActiveRecord::Base
	attr_accessible :lastname, :firstname, :email, :address, :town,
                        :state, :zipcode, :rank
end

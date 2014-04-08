class CreateStudents < ActiveRecord::Migration
  def change
    create_table 'students' do |t|
	t.string 'lastname'
	t.string 'firstname'
	t.string 'email'
	t.string 'address'
	t.string 'town'
	t.string 'state'
	t.string 'zipcode'
	t.string 'rank'
    end
  end
end

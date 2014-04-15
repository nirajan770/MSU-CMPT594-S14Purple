require 'spec_helper'

describe "students/new" do
  before(:each) do
    assign(:student, stub_model(Student,
      :name => "MyString",
      :address => "MyString",
      :state => "MyString",
      :country => "MyString",
      :phone => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", students_path, "post" do
      assert_select "input#student_name[name=?]", "student[name]"
      assert_select "input#student_address[name=?]", "student[address]"
      assert_select "input#student_state[name=?]", "student[state]"
      assert_select "input#student_country[name=?]", "student[country]"
      assert_select "input#student_phone[name=?]", "student[phone]"
      assert_select "input#student_email[name=?]", "student[email]"
    end
  end
end

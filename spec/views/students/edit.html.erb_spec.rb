require 'spec_helper'

describe "students/edit" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :name => "MyString",
      :address => "MyString",
      :state => "MyString",
      :country => "MyString",
      :phone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", student_path(@student), "post" do
      assert_select "input#student_name[name=?]", "student[name]"
      assert_select "input#student_address[name=?]", "student[address]"
      assert_select "input#student_state[name=?]", "student[state]"
      assert_select "input#student_country[name=?]", "student[country]"
      assert_select "input#student_phone[name=?]", "student[phone]"
      assert_select "input#student_email[name=?]", "student[email]"
    end
  end
end

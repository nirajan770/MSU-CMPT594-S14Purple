require 'spec_helper'

describe "students/show" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :name => "Name",
      :address => "Address",
      :state => "State",
      :country => "Country",
      :phone => "Phone",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Address/)
    rendered.should match(/State/)
    rendered.should match(/Country/)
    rendered.should match(/Phone/)
    rendered.should match(/Email/)
  end
end

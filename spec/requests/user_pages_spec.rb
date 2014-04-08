require 'spec_helper'

describe "UserPages" do
  # describing the new user page
  subject {page}

  describe "signup page" do
    before {visit signup_path}

    it { should have_content('Please, Complete all the following fields !')}
  
  end

end

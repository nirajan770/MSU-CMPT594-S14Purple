require 'spec_helper'

###### Integration Test for Users Resource #####
describe "Users pages" do
  
  subject { page }


### Test for the Index Page ###
describe "index" do
    let(:user) { FactoryGirl.create(:user) }

    before do
      sign_in user
      visit users_path
    end

    it { should have_title('All users') }
    it { should have_content('User Accounts') }

    it "should list each user" do
      User.all.each do |user|
        expect(page).to have_selector('li', text: user.name)
      end
    end
    
 

    ## Deleting Users
    describe "delete links" do

      it { should_not have_link('delete') }

      describe "as an admin user" do
        let(:admin) { FactoryGirl.create(:admin) }
        before do
          sign_in admin
          visit users_path
        end

        it { should have_link('Delete', href: user_path(User.first)) }
        it "should be able to delete another user" do
          expect do
            click_link('Delete', match: :first)
          end.to change(User, :count).by(-1)
        end
        it { should_not have_link('Delete', href: user_path(admin)) }
      end
    end
end

### Test for User/Show page ###
describe "profile page" do
	# Using FactoryGirl to create an Active Record User
  let(:user) {FactoryGirl.create(:user)}
  before {visit user_path(user)}

  it { should have_title(user.name)}
end

## Test for User/New Page ###
describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sign Up') }
    it { should have_title('Sign Up') }
end


#### Test for User Sign Up #####
describe "signup" do

    before { visit signup_path }

    let(:submit) { "Create my account" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: "Example User"
        fill_in "Email",        with: "user@example.com"
        fill_in "Password",     with: "foobar"
        fill_in "Confirmation", with: "foobar"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end

      describe "after saving the user" do
        before { click_button submit }
        let(:user) { User.find_by(email: 'user@example.com') }

        it { should have_selector('div.alert.alert-success', text: 'New User Account Created') }
      end
    end
end

#### Test for the Edit Page ####
describe "edit" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit edit_user_path(user) }

    describe "page" do
      #it { should have_content("Update your Profile") }
      it { should have_title("Edit user") }
    end

    describe "with valid information" do
      let(:new_name)  { "New Name" }
      let(:new_email) { "new@example.com" }
      before do
        fill_in "Name",             with: new_name
        fill_in "Email",            with: new_email
        fill_in "Password",         with: user.password
        fill_in "Confirm Password", with: user.password
        click_button "Save changes"
      end

      it { should have_title(new_name) }
      it { should have_selector('div.alert.alert-success') }
      it { should have_link('Sign Out', href: signout_path) }
      specify { expect(user.reload.name).to  eq new_name }
      specify { expect(user.reload.email).to eq new_email }
    end
end




end

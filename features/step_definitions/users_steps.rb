######### Adding User Steps ##############
Given /^a valid user$/ do
     @users = User.all
end

  When /^they go to the users page$/ do
    visit '/users'
  end

  And /^they press "Add a User!"$/ do
    visit '/users/new'
  end

  Then /^they should see the sign up page$/ do
    visit '/users/new'
    #expect(page).to have_title("Sign Up")
  end

  When /^they submit valid signup information$/ do
      @user = User.create
  end
    
  Then /^they should see the new user name and email address$/ do
    expect(page).to have_title(@user.name)
    expect(page).to have_title(@user.email)
   end 

   When /^user signs up without name/ do
    visit '/users/new'
    @user=User.create(name: " ", email: "user@exampl.com")
    #click_button "Create a user"
  end

  Then /^user should see an invalid name message/ do
    expect(page).to have_selector('div.alert.alert')
  end

  When /^user signs up without email/ do
    visit '/users/new'
    @user=User.create(name: "example", email: " ")
    #click_button "Create a user"
  end

  Then /^user should see an invalid email message/ do
    expect(page).to have_selector('div.alert.alert')
  end

  Then /^they should see all the users/ do
    visit '/users'
  end

  When /^they click delete next to an account/ do
    click_link 'Delete'
  end
  


############## Sign In Steps ###############
Given /^a user visits the sign in page$/ do
  visit '/accounts/login'
end


When /^they submit invalid signin information$/ do
  click_button "Sign in"
end

Then /^they should see an error message$/ do
  expect(page).to have_selector('div.alert.alert')
end

Given /^the user has an account$/ do
  @user = User.create(name: "Example User", email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar")
end

When /^the user submits valid signin information$/ do
  fill_in "Email",    with: @user.email
  fill_in "Password", with: @user.password
  click_button "Sign in"
end

Then /^they should see the students page$/ do
  visit '/students'
end

And /^they should see a signout link$/ do
  expect(page).to have_link('Sign Out', href: destroy_user_session_path)
end

When /^the user submits a wrong email/ do
  fill_in "Email", with: "wrong@email.com"
  fill_in "Password", with: @user.password
  click_button "Sign in"
end

When /^the user submits a wrong password/ do
  fill_in "Email", with: @user.email
  fill_in "Password", with: "wrong"
  click_button "Sign in"
end

Then /^the user should see an invalid login message/ do
  expect(page).to have_selector('div.alert.alert')
end


############# Sign Out Steps ################
Given /^a user is logged in/ do
  visit '/accounts/login'
  @user = User.create(name: "Example User", email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar")
  fill_in "Email",    with: @user.email
  fill_in "Password", with: @user.password
  click_button "Sign in"
end

When /^the user signs out/ do
  visit '/accounts/login'
  @user = User.create(name: "Example User", email: "user@example.com",
                      password: "foobar", password_confirmation: "foobar")
  
  click_link "Sign Out"
  #visit '/accounts/logout'
end

Then /^user should see a sign out message/ do
  expect(page).to have_selector('div.alert.alert')
end

When /^user visits the website again/ do
  visit root_path
end

Then /^user should be signed out/ do
  expect(page).to have_link('Sign In', href: new_user_session_path)
end
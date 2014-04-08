require 'spec_helper'

## *** Test Cases for the Home Page and Navigation ** ###

describe "HomePages" do
  
  describe "Home page" do
  	# describing the home page
    it "should have the content 'Please, Sign In'" do
      # uses Capybara function visit to simulate visiting home page
      visit root_path
    # (page) variable provided by Capybara, to express the expectation
      expect(page).to have_content('Please, Sign In')
    end
  end


  describe "Help page" do
  	it "should have the content 'Help Page'" do
  		visit help_path
  		expect(page).to have_content('Help Page')
  	end
  end

  describe "About page" do
  	it "should have the content 'About Developers'" do
  		visit about_path
  		expect(page).to have_content('About Developers')
  	end
  end


end

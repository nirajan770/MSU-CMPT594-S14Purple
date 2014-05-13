Feature: Adding User

  Scenario: Create User with valid data
  	Given a valid user
  	When they go to the users page
  	And they press "Add a User!"
  	Then they should see the sign up page
  	When they submit valid signup information
  	Then they should see the new user name and email address

  Scenario: Create user without name
  	Given a valid user
  	When they go to the users page
  	And they press "Add a User!"
  	When user signs up without name
  	Then user should see an invalid name message

  Scenario: Create user without email
  	Given a valid user
  	When they go to the users page
  	And they press "Add a User!"
  	When user signs up without email
  	Then user should see an invalid email message
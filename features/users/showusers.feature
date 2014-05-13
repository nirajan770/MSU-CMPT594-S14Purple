Feature: Show All Users

  Scenario: Show user accounts
  	Given a valid user
  	When they go to the users page
  	Then they should see all the users
  	
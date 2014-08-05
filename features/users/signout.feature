Feature: Sign Out

Scenario: User signs out
	Given a user is logged in
	When the user signs out
	Then user should see a sign out message
	When user visits the website again
	Then user should be signed out

Feature: Testing for login page

	Scenario: Login without password

		Given I want to use the browser Chrome
		And I am on the Home page
		Then I click on the Sign In button
		When I type user1 in the username input field
		And I click the Sign in button
		Then I see the login error message "Please provide a password."
		And I am on the login page

	Scenario: Login with bad password

		Given I want to use the browser Chrome
		And I am on the Home page
		When I type testuser1 in the username input field
		When I type testuser2 in the password input field
		And I click the Sign in button
		Then I see the login error message "The password provided does not match the username entered."
		And I am on the login page

	Scenario Outline: Successful login

		Given I want to use the browser Chrome
		And I am on the Home page
		When I type testuser1 in the username input field
		When I type testuser1 in the password input field
		And I click the Sign in button
		Then I should get no error

		Examples:
				|	    browser	 |
				|	    Firefox	 |
				|	    Chrome       |
				|     InternetExplorer   |
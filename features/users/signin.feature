Feature: Sign In

Scenario: Unsuccessful Signin
    Given a user visits the sign in page
    When they submit invalid signin information
    Then they should see an error message

Scenario: Successful signin
    Given a user visits the sign in page
    And the user has an account
    When the user submits valid signin information
    Then they should see the students page
    And they should see a signout link

Scenario: User enters wrong email
      Given a user visits the sign in page
      And the user has an account
      When the user submits a wrong email
      Then the user should see an invalid login message
      
      
Scenario: User enters wrong password
      Given a user visits the sign in page
      And the user has an account
      When the user submits a wrong email
      Then the user should see an invalid login message
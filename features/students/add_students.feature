Feature: Adding Student

  Scenario: Create student with valid data
  	Given a valid user
  	When they go to the students page
  	And they press "Add a Student"
  	Then they should see the add student page
  	When they submit valid student information
  	Then they should see the new student information

  Scenario: Create student with invalid data
  	Given a valid user
  	When they go to the students page
  	And they press "Add a Student"
  	When user adds student without name
  	Then user should see an invalid name message


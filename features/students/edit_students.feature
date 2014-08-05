Feature: Edit Student
  
    Scenario: User sign in and edit a student information
      Given a valid user
  	  When they go to the students page
      When they edit a student details
      Then they should see an student edited message
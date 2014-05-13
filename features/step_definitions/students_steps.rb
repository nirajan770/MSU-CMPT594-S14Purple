######### Adding Student Steps ##############

  When /^they go to the students page$/ do
    visit '/students'
  end

  And /^they press "Add a Student"$/ do
    visit '/students/new'
  end

  Then /^they should see the add student page$/ do
    visit '/students/new'
    #expect(page).to have_title("Sign Up")
  end

  When /^they submit valid student information$/ do
      @student = Student.create
  end
    
  Then /^they should see the new student information$/ do
    expect(page).to have_title(@student.name)
    expect(page).to have_title(@student.address)
    expect(page).to have_title(@student.city)
    expect(page).to have_title(@student.state)
    expect(page).to have_title(@student.country)
    expect(page).to have_title(@student.zip)
    expect(page).to have_title(@student.phone)
    expect(page).to have_title(@student.email)
   end 

   When /^user adds student without name/ do
    visit '/students/new'
    @student=Student.create(name: " ", email: "user@exampl.com")
    #click_button "Create a user"
  end

  When /^they edit a student details$/ do
    #click_link "Edit"
    @student = FactoryGirl.create(:student) 
    visit edit_student_path(@student)
    #fill_in "Name", :with => "newname"
    #click_button "Submit"
  end

  Then /^they should see an student edited message/ do
    expect(page).to have_selector('div.alert.alert')
  end
require 'spec_helper'

#### RSpec Test for User Model #####

describe User do

  before { @user = User.new(name: "Example User", email: "user@example.com",
   password: "foobar", password_confirmation: "foobar")}

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it {should respond_to(:password_digest)}
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:authenticate) }
  it {should respond_to(:admin)}

## validating presence of name and email
  it {should be_valid}
  it { should_not be_admin }

  describe "with admin attribute set to 'true'" do
    before do
      @user.save!
      @user.toggle!(:admin)
    end

    it { should be_admin }
  end

## throw error if name is not present
describe "when name is not present" do
	before {@user.name=""}
	it {should_not be_valid}
end

## throw error if email is not present
describe "when email is not present" do
	before {@user.email=""}
	it {should_not be_valid}
end

## validating the length of the name
describe "when name is too long " do
	before{(@user.name="a"*51)}
	it { should_not be_valid}
end

## validating the email format
describe "when email format is invalid" do
	it "should be invalid" do
		address= %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
        address.each do |invalid_address|
        	@user.email=invalid_address
        	expect(@user).not_to be_valid
        end
    end
end

## validating the email format ###
describe "when email format is valid" do
    it "should be valid" do
      addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
      addresses.each do |valid_address|
        @user.email = valid_address
        expect(@user).to be_valid
      end
    end
  end

## Email already taken Test
describe "when email address is already taken" do
	before do
		user_with_same_email =@user.dup
		user_with_same_email.email = @user.email.upcase
		user_with_same_email.save
	end
	it {should_not be_valid}
end

### Tests for Password ###

describe "when password is not present" do
  before do
    @user = User.new(name: "Example User", email: "user@example.com",
                     password: " ", password_confirmation: " ")
  end
  it { should_not be_valid }
end

describe "when password doesn't match confirmation" do
  before { @user.password_confirmation = "mismatch" }
  it { should_not be_valid }
end

### User Authentication ###
describe "with a password that's too short" do
    before { @user.password = @user.password_confirmation = "a" * 5 }
    it { should be_invalid }
  end

describe "return value of authenticate method" do
    before { @user.save }
    let(:found_user) { User.find_by(email: @user.email) }

describe "with valid password" do
    it { should eq found_user.authenticate(@user.password) }
   end

describe "with invalid password" do
      let(:user_for_invalid_password) { found_user.authenticate("invalid") }

      it { should_not eq user_for_invalid_password }
      specify { expect(user_for_invalid_password).to be_false }
    end
end

## Test for the Remember Sign In Token
describe "remember token" do
    before { @user.save }
    its(:remember_token) { should_not be_blank }
 end


#### Test for Admin Account ###
  describe "with admin attribute set to 'true'" do
    before do
      @user.save!
      @user.toggle!(:admin)
    end

    it { should be_admin }
  end

  

end
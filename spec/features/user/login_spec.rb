require "rails_helper"

RSpec.describe User, :type => :feature do

  before(:all) do
    @user1 = create(:user)
  end


  it "is valid with valid attrributes" do
    expect(@user1).to be_valid
  end

  it "has a unique username" do
    user2 = build(:user, email: "bob@gmail.com")
    expect(user2).to_not_be_valid
  end

  it "has a unique email" do
    user2 = build(:user, username: "Bob")
    expect(user2).to_not_be_valid
  end

  it "is not valid without a password" do
    user2 = build(:user, password: nil)
    expect(user2).to_not_be_valid
  end

  it "is not alid without an email" do
    user2 = build(:user, email: nil)
    expect(user2).to_not_be_valid
  end

  it "will click the login button" do
  expect(page).to have_selector('#user-settings')
end

end

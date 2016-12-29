require 'rails_helper'

describe "User" do
  before(:each) do
    @user = User.create!(name: "Joe",
                        email: "j@joe.com",
                        password: "boom")
  end
  scenario "can have a name, email and encrypted password" do

    expect(@user.name).to eq("Joe")
    expect(@user.email).to eq("j@joe.com")
    expect(@user.authenticate("boom")).to be_truthy
  end

  scenario "must have unique email" do
    invalid_user = User.create(name: "Jeff",
                                email: "j@joe.com",
                                password: "boom")

    expect(invalid_user).to_not be_valid
  end

  scenario "can be made as admin" do
    # admin = User.create!(name: 'Jake',
    #                      email: 'jake@admin.com',
    #                      password: 'boom',
    #                      role: 1)
    admin = create(:user, role: 1)
    expect(admin.admin?).to be_truthy
    expect(@user.default?).to be_truthy
  end
end
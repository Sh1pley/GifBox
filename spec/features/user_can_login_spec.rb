require 'rails_helper'

describe "User login" do
  before do
    @user = create(:user)
  end

  scenario "a user can login with email/password" do
    visit login_path
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "boom"
    click_button "Login"

    expect(page).to have_content "Welcome, #{@user.name}"
  end
end
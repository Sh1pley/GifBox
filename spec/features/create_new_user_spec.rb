require 'rails_helper'

describe "Register User" do
  scenario "a new user can be created" do
    visit new_user_path
    
    fill_in "Name", with: "tom"
    fill_in "Email", with: "t@tom.com"
    fill_in "Password", with: "boom"
    click_button "Create Account"

    expect(page).to have_content("Welcome, tom")
  end
end


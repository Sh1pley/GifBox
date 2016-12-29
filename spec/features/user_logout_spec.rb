require 'rails_helper'

describe "User Logout" do
  before do
    @user = create(:user)
    page.set_rack_session(user_id: @user.id)
  end
  scenario "user can logout to end session once logged in" do
    visit user_path(@user)
    click_link "Logout"

    expect(page).to_not have_content("Welcome, #{@user.name}")
    expect(current_path).to eq root_path
  end
end
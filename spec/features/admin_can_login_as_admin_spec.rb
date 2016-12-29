require 'rails_helper'

describe 'Admin' do
  before :each do
    @admin = create(:user, role: 1)
  end
  scenario 'can login as admin' do

    visit login_path
    fill_in "Email", with: "#{@admin.email}"
    fill_in "Password", with: "#{@admin.password}"
    click_button "Login"

    expect(current_path).to eq admin_dashboard_index_path
  end

  scenario 'can '
end
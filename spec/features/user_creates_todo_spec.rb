require "rails_helper"

feature "user creates todo" do
  scenario "successfully" do
    sign_in
    
    create_todo "Buy beer"

    expect(page).to display_todo "Buy beer"
  end
end

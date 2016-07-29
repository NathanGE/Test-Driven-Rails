require "rails_helper"

feature "User marks todo incomplete" do
  scenario "successfully" do
    sign_in
    create_todo "Buy beer"

    click_on "Mark complete"
    click_on "Mark incomplete"

    expect(page).not_to display_completed_todo "Buy beer"
    expect(page).to display_todo "Buy beer"
  end
end

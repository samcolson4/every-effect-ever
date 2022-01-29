require 'rails_helper'

RSpec.feature "Brands", type: :feature do
  scenario "User can see the name of a brand on /brands" do
    visit "/brands"
    expect(page).to have_text("Boss")
  end
end

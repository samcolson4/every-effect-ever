require 'rails_helper'

RSpec.feature "Effects", type: :feature do
  scenario "User can add a new effect" do
    add_brand()

    visit "/contribute"
    expect(page).to have_text("Add an effect.")
    click_link "Add an effect."
    expect(page).to have_text("Brand not listed?")

    select "test brand", :from => "effect_brand_id"
    fill_in "effect_name", with: "test effect"
    fill_in "effect_image_link", with: "testeffectimage.org/jpg"
    fill_in "effect_notes", with: "This is a test note"

    click_button "Create effect"
    expect(page).to have_text("Add information about a version")
  end
end

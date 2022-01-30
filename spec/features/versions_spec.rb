require 'rails_helper'

RSpec.feature "Effects", type: :feature do
  scenario "User can add a new effect" do
    add_brand()
    add_effect()

    visit "/contribute"
    expect(page).to have_text("Add a version.")
    click_link "Add a version."
    expect(page).to have_text("Effect not listed?")

    select "test effect", :from => "version_effect_id"
    fill_in "version_effect_type", with: "Reverb"
    select "Pedal", :from => "version_effect_format"
    fill_in "version_version_name", with: "Mk.1"
    fill_in "version_version_iteration", with: "1"
    fill_in "version_colours", with: "Orange, green"
    select "1990", :from => "version_year_released"
    select "2010", :from => "version_year_discontinued"
    select "China", :from => "version_manufacturing_location_current"
    select "United States", :from => "version_manufacturing_location_former"
    fill_in "version_length", with: "10.2"
    fill_in "version_width", with: "16.8"
    fill_in "version_height", with: "5"
    fill_in "version_sources", with: "www.sources.blah, www.bbc.co.uk"

    click_button "Add version"

    # visit "/test_brand/test_effect/"
    expect(page).to have_text("Reverb")
  end

end

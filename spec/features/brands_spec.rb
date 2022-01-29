require 'rails_helper'

RSpec.feature "Brands", type: :feature do
  scenario "User can see the name of a brand on /brands" do
    visit "/brands"
    expect(page).to have_text("Boss")
  end

  scenario "User can add a new brand" do
    visit "/contribute"
    expect(page).to have_text("Add a brand.")
    click_link "Add a brand."
    expect(page).to have_text("Parent company")

    fill_in 'brand_name', with: "test brand"
    fill_in 'brand_website_link', with: "www.google.com"
    fill_in 'brand_year_founded', with: "1993"
    select "United States", :from => "brand_country_founded"
    fill_in 'brand_area_founded', with: "Palo Alto"
    fill_in 'brand_logo_image_link', with: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/736px-Google_2015_logo.svg.png"
    fill_in 'brand_parent_company', with: "Alphabet"
    fill_in 'brand_notes', with: "Should probably have done this with a pedal company."

    click_button "Create Brand"
    visit "/brands"
    expect(page).to have_text("test brand")
  end
end

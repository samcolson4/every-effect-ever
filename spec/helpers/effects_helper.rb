def add_brand
  visit '/brands/contribute'

  fill_in 'brand_name', with: "test brand"
  fill_in 'brand_website_link', with: "www.google.com"
  fill_in 'brand_year_founded', with: "1993"
  fill_in 'brand_area_founded', with: "Palo Alto"
  fill_in 'brand_logo_image_link', with: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/736px-Google_2015_logo.svg.png"
  fill_in 'brand_parent_company', with: "Alphabet"
  fill_in 'brand_notes', with: "Should probably have done this with a pedal company."

  click_button "Create Brand"
end

def add_effect
  visit "/effects/contribute"

  select "test brand", :from => "effect_brand_id"
  fill_in "effect_name", with: "test effect"
  fill_in "effect_image_link", with: "testeffectimage.org/jpg"
  fill_in "effect_notes", with: "This is a test note"

  click_button "Create effect"
end

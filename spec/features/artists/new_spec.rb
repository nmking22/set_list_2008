require 'rails_helper'

describe "As a Visitor" do
  it "I visit the new artist page and click 'Create Artist' without filling in a name then I see a message telling me that I am missing required information and I still see the new artist form" do
    visit artists_new_path

    click_button 'Create Artist'

    expect(page).to have_content("Artist not created: Required information missing.")
    expect(page).to have_button('Create Artist')
  end
end

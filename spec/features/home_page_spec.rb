require 'rails_helper'

feature 'Homepage' do

  #scenario 'User visits the homepage' do
    #visit root_path
    #expect(page).to have_content("Practice Validations")
  #end

  scenario "User creates a new organization" do
    visit root_path
    click_on "Organizations"
    click_on "New Organization"
    click_on "Create Organization"
    expect(page).to have_content("Name can't be blank")
  end

  scenario "User creates a new person" do
    visit root_path
    click_on "People"
    click_on "New Person"
    click_on "Create Person"
    expect(page).to have_content("First name can't be blank")
  end

end

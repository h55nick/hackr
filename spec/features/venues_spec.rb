require 'spec_helper'

describe 'Venues' do

  describe 'Get /' do
    it 'displays Add Venue link' do
        visit root_path
        page.should have_link('Add Venue')
    end
  end

  describe 'GET /venues/new' do
    it 'displays the create venues button', :js => true do
      visit root_path
      click_link('Add Venue')
      page.should have_button('Create Venue')
      page.should have_button('Cancel')
    end
  end

  describe 'POST /venues' do
    it 'creates a new venue', :js => true do
      #Set
      visit root_path
      click_link('Add Venue')
      fill_in('Name',:with=>'Hoboken')
      click_button('Create Venue')
      #Tests
      page.should have_link('Add Venue')
      page.should have_link('Add Event')
      page.should_not have_button('Create Venue')
      expect(Venue.first.name).to eq 'Hoboken'
    end
  end

  describe 'JS cancel_venue_form()' do
    it 'removes create Venue form', js: true do
      visit root_path
      click_link('Add Venue')
      click_button('Cancel')
      page.should_not have_button('Create Venue')
    end
  end

end

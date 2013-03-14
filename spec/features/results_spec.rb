require 'spec_helper'


describe 'Get /' do

  it 'has two links' do

  end
  it 'displays results' , :js => true do
    # adding venue
      visit root_path
      click_link('Add Venue')
      fill_in('Name',:with=>'Hoboken')
      click_button('Create Venue')
      #Tests
      page.should have_link('Add Venue')
      page.should have_link('Add Event')
      page.should_not have_button('Create Venue')
      expect(Venue.first.name).to eq 'Hoboken'
  # add event
      event= Event.create(name:'API', eventdate:"1/1/2011", venue_id: Venue.first.id)

      page.should have_text("Hoboken")
      page.should have_text("API")
      page.should have_text("1/1/2011")
  end

end
class VenuesController < ApplicationController
def splash
#index page
end

  def new
    @venue = Venue.new
  end

  def create

  end

end
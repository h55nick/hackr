class VenuesController < ApplicationController
def splash
#index page
end

  def new
    @venue = Venue.new
  end

  def create
    venue = Venue.create(params[:venue])
    @venues = Venue.all
  end

end
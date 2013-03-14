class EventsController < ApplicationController

  def new
    @event = Event.new
    @venues = Venue.all
  end
  def create
    @venue = Venue.where(params[:event][:venue])
    params[:event][:venue] = @venue
    event = Event.create(params[:event])
    @events = Event.all
  end

end
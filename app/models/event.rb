class Event < ActiveRecord::Base
  attr_accessible :name, :eventdate, :venue,:venue_id
  has_one :venue
end
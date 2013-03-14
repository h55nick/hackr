class Event < ActiveRecord::Base
  attr_accessible :name, :eventdate, :venue
  has_one :venue
end
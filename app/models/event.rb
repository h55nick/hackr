class Event < ActiveRecord::Base
  attr_accessible :name, :date
  has_one :venue
end
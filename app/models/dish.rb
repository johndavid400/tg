class Dish < ActiveRecord::Base
  attr_accessible :cook_time, :event_id, :name, :start_time
  belongs_to :event
end

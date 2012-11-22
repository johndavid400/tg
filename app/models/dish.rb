class Dish < ActiveRecord::Base
  attr_accessible :cook_time, :name, :prep_time, :start_time
  belongs_to :event
end

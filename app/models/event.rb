class Event < ActiveRecord::Base
  attr_accessible :name, :eat_time
  has_many :dishes
end

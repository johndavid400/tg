class AddEatTimeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :eat_time, :datetime
  end
end

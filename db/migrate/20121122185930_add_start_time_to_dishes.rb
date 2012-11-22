class AddStartTimeToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :start_time, :datetime
  end
end

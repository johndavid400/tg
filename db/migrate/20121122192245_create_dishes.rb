class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.datetime :start_time
      t.float :cook_time
      t.integer :event_id

      t.timestamps
    end
  end
end

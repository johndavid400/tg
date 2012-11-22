class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :prep_time
      t.integer :cook_time

      t.timestamps
    end
  end
end

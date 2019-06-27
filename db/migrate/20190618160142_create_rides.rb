class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.references :driver, foreign_key: true
      t.integer :pick_up_point_id
      t.integer :drop_off_point_id
      t.datetime :pick_up_datetime
      t.datetime :drop_off_datetime

      t.timestamps
    end
  end
end

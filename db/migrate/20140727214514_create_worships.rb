class CreateWorships < ActiveRecord::Migration
  def change
    create_table :worships do |t|
      t.string :name
      t.int :weekday
      t.time :schedule

      t.timestamps
    end
  end
end

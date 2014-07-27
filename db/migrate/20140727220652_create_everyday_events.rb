class CreateEverydayEvents < ActiveRecord::Migration
  def change
    create_table :everyday_events do |t|
      t.string :name
      t.time :schedule
      t.int :day
      t.string :repetition
      t.references :category_event, index: true

      t.timestamps
    end
  end
end

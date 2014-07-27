class CreateCategoryEvents < ActiveRecord::Migration
  def change
    create_table :category_events do |t|
      t.string :name

      t.timestamps
    end
  end
end

class CreateChruches < ActiveRecord::Migration
  def change
    create_table :chruches do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :country
      t.string :zip_code
      t.references :member, index: true

      t.timestamps
    end
  end
end

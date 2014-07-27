class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.references :member, index: true
      t.text :description
      t.integer :pastor

      t.timestamps
    end
  end
end

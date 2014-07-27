class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.references :member, index: true
      t.text :description
      t.int :pastor

      t.timestamps
    end
  end
end

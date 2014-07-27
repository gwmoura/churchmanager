class CreateDepartaments < ActiveRecord::Migration
  def change
    create_table :departaments do |t|
      t.string :name
      t.text :description
      t.references :member, index: true

      t.timestamps
    end
  end
end

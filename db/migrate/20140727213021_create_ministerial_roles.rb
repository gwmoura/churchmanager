class CreateMinisterialRoles < ActiveRecord::Migration
  def change
    create_table :ministerial_roles do |t|
      t.string :name

      t.timestamps
    end
  end
end

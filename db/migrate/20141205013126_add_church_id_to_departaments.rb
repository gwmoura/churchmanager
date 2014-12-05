class AddChurchIdToDepartaments < ActiveRecord::Migration
  def change
    add_reference :departaments, :chruch, index: true
  end
end

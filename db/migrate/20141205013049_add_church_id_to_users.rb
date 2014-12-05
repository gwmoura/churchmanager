class AddChurchIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :chruch, index: true
  end
end

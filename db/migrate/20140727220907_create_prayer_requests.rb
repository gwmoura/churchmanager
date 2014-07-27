class CreatePrayerRequests < ActiveRecord::Migration
  def change
    create_table :prayer_requests do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :request
      t.references :member, index: true

      t.timestamps
    end
  end
end

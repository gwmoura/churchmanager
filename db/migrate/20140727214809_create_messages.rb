class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.date :date
      t.time :schedule
      t.text :message_text

      t.timestamps
    end
  end
end

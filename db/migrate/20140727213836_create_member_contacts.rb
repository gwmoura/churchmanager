class CreateMemberContacts < ActiveRecord::Migration
  def change
    create_table :member_contacts do |t|
      t.references :member, index: true
      t.string :contact_name
      t.string :contact_number
      t.string :degree_kinship

      t.timestamps
    end
  end
end

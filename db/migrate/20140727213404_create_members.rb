class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.date :birth_date
      t.int :sex
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :country
      t.string :zip-code
      t.string :home_phone
      t.string :mobile_phone
      t.string :work_phone
      t.string :email
      t.string :blood_type
      t.int :marital_status
      t.int :congregating
      t.string :photo
      t.date :withdrawl_date
      t.references :departament, index: true
      t.string :skills
      t.date :worship_date
      t.int :situation
      t.string :profession
      t.string :education
      t.date :baptism_date
      t.date :wedding_date
      t.references :ministerial_role, index: true
      t.string :facebook
      t.string :twitter
      t.string :instagram
      t.string :whatsapp
      t.references :church, index: true

      t.timestamps
    end
  end
end

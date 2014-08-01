class Member < ActiveRecord::Base
  belongs_to :departament
  belongs_to :ministerial_role
  belongs_to :church

  has_many :member_contacts
  accepts_nested_attributes_for :member_contacts, :allow_destroy => true
end

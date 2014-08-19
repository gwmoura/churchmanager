class MemberContact < ActiveRecord::Base
  belongs_to :member
  validates_presence_of :member_id, :contact_name, :contact_number
end

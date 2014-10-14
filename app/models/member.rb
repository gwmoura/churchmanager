class Member < ActiveRecord::Base
  belongs_to :departament
  belongs_to :ministerial_role
  belongs_to :church

  has_many :member_contacts
  accepts_nested_attributes_for :member_contacts, :allow_destroy => true
  validates_presence_of :church_id, :name

  def sex_name
    if self.sex == 1
      return 'male'
    elsif self.sex == 0 
      return 'female'
    end
  end

end

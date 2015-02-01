class Member < ActiveRecord::Base
  belongs_to :departament
  belongs_to :ministerial_role
  belongs_to :church

  has_many :member_contacts
  accepts_nested_attributes_for :member_contacts, :allow_destroy => true
  validates_presence_of :church_id, :name

  paginates_per 10

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  def sex_name
    if self.sex == 1
      return 'male'
    elsif self.sex == 0 
      return 'female'
    end
  end

  def situation_name
    situations = {0=>'situation.new_decided', 1=>'situation.reconciliation', 2=>'situation.visiting', 3=>'situation.acclaim', 4=>'situation.inative' }
    return situations[self.situation]
  end

  def marital_status_name
    marital_status = {0=>'marital_status.single', 1=>'marital_status.maried', 2=>'marital_status.widowed' }
    return marital_status[self.marital_status]
  end

end

class Departament < ActiveRecord::Base
  belongs_to :member
  validates_presence_of :name, :description
end

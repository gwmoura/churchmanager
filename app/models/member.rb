class Member < ActiveRecord::Base
  belongs_to :departament
  belongs_to :ministerial_role
  belongs_to :church
end

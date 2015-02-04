class AddComplementToMembers < ActiveRecord::Migration
  def change
    add_column :members, :complement, :string
  end
end

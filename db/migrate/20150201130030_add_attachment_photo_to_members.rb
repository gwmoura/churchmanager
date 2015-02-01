class AddAttachmentPhotoToMembers < ActiveRecord::Migration
  def self.up
    change_table :members do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :members, :photo
  end
end

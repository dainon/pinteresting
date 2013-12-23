class AddAttachmentMediumToPins < ActiveRecord::Migration
  def self.up
    change_table :pins do |t|
      t.attachment :medium
    end
  end

  def self.down
    drop_attached_file :pins, :medium
  end
end

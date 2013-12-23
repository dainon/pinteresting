class AddAttachmentThumbToPins < ActiveRecord::Migration
  def self.up
    change_table :pins do |t|
      t.attachment :thumb
    end
  end

  def self.down
    drop_attached_file :pins, :thumb
  end
end

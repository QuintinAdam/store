class AddAttachmentPhotoToGalleries < ActiveRecord::Migration
  def self.up
    change_table :galleries do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :galleries, :photo
  end
end

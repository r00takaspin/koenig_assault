class AddAttachmentImageToArchivePosts < ActiveRecord::Migration
  def self.up
    change_table :archive_posts do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :archive_posts, :image
  end
end

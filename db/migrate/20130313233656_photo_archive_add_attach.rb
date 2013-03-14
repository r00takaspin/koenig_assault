class PhotoArchiveAddAttach < ActiveRecord::Migration
  def change
    add_attachment :photo_archives, :image
  end
end

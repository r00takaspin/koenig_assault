class CreatePhotoArchives < ActiveRecord::Migration
  def change
    create_table :photo_archives do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end

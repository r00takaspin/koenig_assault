class ArchivePostMigration < ActiveRecord::Migration
  def self.up
    create_table :archive_posts do |t|
      t.string :name
      t.string :preview_content
      t.string :detail_content

      t.timestamps
    end
  end

  def self.down
    drop_table :archive_posts
  end
end

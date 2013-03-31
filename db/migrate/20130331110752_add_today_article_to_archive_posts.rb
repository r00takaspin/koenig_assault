class AddTodayArticleToArchivePosts < ActiveRecord::Migration
  def change
    add_column :archive_posts, :today_active, :boolean

  end
end

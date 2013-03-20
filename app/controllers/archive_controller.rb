# encoding: UTF-8
class ArchiveController < ApplicationController
  def index
  	@title = t(:archive_index_title)
  	@all_posts = ArchivePost.find(:all,:order=>"id DESC")
  end

  def detail
  	@post = ArchivePost.find_by_id(params[:id])
  	if (@post)
  		@title = @post.name
      @og_image = @post.image.url(:medium)
    else
      render :text => "Ничего не найдено", :status => 404

    end
  end
end

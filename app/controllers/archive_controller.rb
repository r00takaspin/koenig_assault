# encoding: UTF-8
class ArchiveController < ApplicationController
  def index
  	@title = t(:archive_index_title)
  	@all_posts = ArchivePost.all(:conditions => { :active => true },:order=>'id ASC')
  end

  def last
    @post = ArchivePost.find_by_today_active(true)

    if (@post)
      @title = @post.name
      @og_image = @post.image.url(:medium)
      render :detail
    else
      render :text => "Ничего не найдено", :status => 404
    end

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

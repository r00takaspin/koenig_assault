# encoding: UTF-8
class ArchiveController < ApplicationController
  def index
  	@title = "Ахрив штурма Кенигсберга"
  	@all_posts = ArchivePost.find(:all,:order=>"id DESC")
  end

  def detail
  	@post = ArchivePost.find(params[:id])
  	if (@post)
  		@title = @post.name
	end
  end
end

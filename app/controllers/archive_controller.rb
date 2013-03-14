# encoding: UTF-8
class ArchiveController < ApplicationController
  def index
  	@title = "Ахрив штурма Кенигсберга"
  	@all_posts = ArchivePost.find(:all,:order=>"id DESC")
  end

  def detail
  end
end

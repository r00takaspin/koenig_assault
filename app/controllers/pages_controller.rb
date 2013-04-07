# encoding: UTF-8
class PagesController < ApplicationController
  def index
  	@title = "Штурм Кенигсберга"
  	@index_message = t(:index_page_text)
  	@first_post = ArchivePost.all(:conditions => { :active => true },:limit=>1,:order=>'id DESC')
  	@top_photos = PhotoArchive.limit(6)

  	@another_posts = ArchivePost.all(:conditions => { :active => true },:order=>'id DESC',:offset=>1)
  end

  def photos
  	@title = "Фотоархив взятия Кенигсберга"
  	@photos = PhotoArchive.all
  end

  def veterans
  end
end

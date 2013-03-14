# encoding: UTF-8
class PagesController < ApplicationController
  def index
  	@title = "Штурм Кенигсберга 9 апреля 1945 года"
  	@index_message = t(:index_page_text)
  	@first_post = ArchivePost.limit(1)
  	@top_photos = PhotoArchive.limit(6)
  end

  def photos
  	@title = "Фотоархив взятия Кенигсберга"
  	@photos = PhotoArchive.all
  end

  def veterans
  end
end

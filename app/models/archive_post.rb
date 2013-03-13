class ArchivePost < ActiveRecord::Base
	attr_accessible :name,:preview_content,:detail_content,:image

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	validates :name,:detail_content, :presence => true
	validates :preview_content, :presence=>true
end

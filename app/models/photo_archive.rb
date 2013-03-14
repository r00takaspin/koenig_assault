class PhotoArchive < ActiveRecord::Base
	attr_accessible :name,:description,:image

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>", :large => '1000x1000>' }	
end

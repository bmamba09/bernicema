class Photo < ActiveRecord::Base

	# This method associates the attribute ":photo" with a file attachment
	has_attached_file :image, styles: {
	thumb: '100x100>',
	sitesize: "1000x667#"
	}

	# Validate the attached image is image/jpg, image/png, etc
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	def self.search(search)
	  where("CAST(date AS text) ILIKE ? OR tags ILIKE ? OR title ILIKE ? OR description ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
	end

end

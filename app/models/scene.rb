class Scene < ActiveRecord::Base

	def html_safe_image
		image = ( self.image || "" )
		# add id
		image = image.html_safe.gsub( /^<svg\s/, '<svg id="picture" ' )
		

	end

end

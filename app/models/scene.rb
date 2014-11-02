class Scene < ActiveRecord::Base

	def html_safe_image
		( self.image || "" ).html_safe.gsub( /^<svg\s/, '<svg id="picture" ' )
	end

end

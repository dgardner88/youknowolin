require 'time'

class Post < ActiveRecord::Base

	def get_time()
		return Time.parse(:created_at)
	end
	
	validates :description,	:image_url, :presence=>true
	validates :image_url, :format => {
				:with => %r{\.(gif|jpg|png)$}i,
				:message => 'must be a URL for GIF, JPG, or PNG image.'
				}
	
end
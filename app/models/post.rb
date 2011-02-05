class Post < ActiveRecord::Base
	validates :description,	:image_url, :presence=>true
	validates :image_url, :format => {
				:with => %r{\.(gif|jpg|png)$}i,
				:message => 'must be a URL for GIF, JPG, or PNG image.'
				}
end
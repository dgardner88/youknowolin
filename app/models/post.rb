require 'time'

class Post < ActiveRecord::Base

	validates :description,	:image_url, :presence=>true
	validates :image_url, :format => {
				:with => %r{\.(gif|jpg|png)$}i,
				:message => 'must be a URL for GIF, JPG, or PNG image.'
				}
	
end
# == Schema Information
#
# Table name: posts
#
#  id          :integer         not null, primary key
#  description :text
#  image_url   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#


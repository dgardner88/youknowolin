# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

	Post.create(:description => 'Ipsum Lorem', :image_url => 'http://www.flickr.com/photos/olin/435302708/')
	Post.create(:description => 'someone has a book on their head', :image_url => 'www.google.com/blahblah')
	Post.create(:description => 'you hear My Dick at 9AM.', :image_url => 'http://www3.babson.edu/Offices/public_safety/logs/images/Olincruiser.JPG')	

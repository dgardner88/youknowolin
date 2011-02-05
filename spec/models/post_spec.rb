require 'spec_helper'

describe Post do
	before(:each) do
	@attr = {:description => 'Test description',
	         :image_url=> 'test.jpg'}
         end
	
	it "should work given default attributes" do
		good_post=Post.new(@attr)
		good_post.should be_valid
	end
	
 it "should have a description" do
 	bad_post = Post.new(@attr.merge(:description=>''))
 	bad_post.should_not be_valid
 	bad_post.should have(1).error_on(:description)
 	 end
 	 

 it "should have an image url that ends with PNG, JPG, or GIF" do
      no_image_url_product = Post.new(@attr.merge(:image_url => ''))
      no_image_url_product.should_not be_valid

      no_photo_tag_product = Post.new(@attr.merge(:image_url => 'Atthebeach'))
      no_photo_tag_product.should_not be_valid

      valid_endings = %w[foo.jpg foo.JPG foo.png foo.PNG foo.gif foo.GIF]
      valid_endings.each do |ending|
           valid_image_url = Post.new(@attr.merge(:image_url => ending))
           valid_image_url.should be_valid
                       end

      invalid_endings = %w[foo.doc foo.gif/more foo.gif.more]
       invalid_endings.each do |ending|
             invalid_image_url = Post.new(@attr.merge(:image_url => ending))
             invalid_image_url.should_not be_valid
                       end
               end

		
 		 
end


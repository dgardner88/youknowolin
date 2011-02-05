require 'spec_helper'

describe "posts/index.html.erb" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :description => "Description",
        :image_url => "Image Url"
      ),
      stub_model(Post,
        :description => "Description",
        :image_url => "Image Url"
      )
    ])
  end

  it "renders a list of posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :isbn => "Isbn",
        :title => "Title",
        :description => "MyText",
        :pc_image_url => "Pc Image Url",
        :mb_image_url => "Mb Image Url",
        :category => nil
      ),
      Book.create!(
        :isbn => "Isbn",
        :title => "Title",
        :description => "MyText",
        :pc_image_url => "Pc Image Url",
        :mb_image_url => "Mb Image Url",
        :category => nil
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Isbn".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Pc Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "Mb Image Url".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

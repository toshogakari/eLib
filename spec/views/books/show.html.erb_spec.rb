require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :isbn => "Isbn",
      :title => "Title",
      :description => "MyText",
      :pc_image_url => "Pc Image Url",
      :mb_image_url => "Mb Image Url",
      :category => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Isbn/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Pc Image Url/)
    expect(rendered).to match(/Mb Image Url/)
    expect(rendered).to match(//)
  end
end

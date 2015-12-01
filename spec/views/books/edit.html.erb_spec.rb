require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :isbn => "MyString",
      :title => "MyString",
      :description => "MyText",
      :pc_image_url => "MyString",
      :mb_image_url => "MyString",
      :category => nil
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

      assert_select "input#book_isbn[name=?]", "book[isbn]"

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select "textarea#book_description[name=?]", "book[description]"

      assert_select "input#book_pc_image_url[name=?]", "book[pc_image_url]"

      assert_select "input#book_mb_image_url[name=?]", "book[mb_image_url]"

      assert_select "input#book_category_id[name=?]", "book[category_id]"
    end
  end
end

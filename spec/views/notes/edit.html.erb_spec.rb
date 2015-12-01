require 'rails_helper'

RSpec.describe "notes/edit", type: :view do
  before(:each) do
    @note = assign(:note, Note.create!(
      :note => "MyText",
      :book_case => nil
    ))
  end

  it "renders the edit note form" do
    render

    assert_select "form[action=?][method=?]", note_path(@note), "post" do

      assert_select "textarea#note_note[name=?]", "note[note]"

      assert_select "input#note_book_case_id[name=?]", "note[book_case_id]"
    end
  end
end

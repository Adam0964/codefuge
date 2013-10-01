require 'spec_helper'

describe "books/edit" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :title => "MyString",
      :author => "MyString",
      :pubDate => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", book_path(@book), "post" do
      assert_select "input#book_title[name=?]", "book[title]"
      assert_select "input#book_author[name=?]", "book[author]"
      assert_select "input#book_pubDate[name=?]", "book[pubDate]"
      assert_select "textarea#book_description[name=?]", "book[description]"
    end
  end
end

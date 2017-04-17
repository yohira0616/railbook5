require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :isbn => "MyString",
      :title => "MyString",
      :price => 1,
      :publish => "MyString",
      :dl => false
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input#book_isbn[name=?]", "book[isbn]"

      assert_select "input#book_title[name=?]", "book[title]"

      assert_select "input#book_price[name=?]", "book[price]"

      assert_select "input#book_publish[name=?]", "book[publish]"

      assert_select "input#book_dl[name=?]", "book[dl]"
    end
  end
end

require 'rails_helper'

RSpec.describe "authors/edit", type: :view do
  before(:each) do
    @author = assign(:author, Author.create!(
      :user => nil,
      :name => "MyString",
      :address => "MyText",
      :ctype => "MyString",
      :photo => ""
    ))
  end

  it "renders the edit author form" do
    render

    assert_select "form[action=?][method=?]", author_path(@author), "post" do

      assert_select "input#author_user_id[name=?]", "author[user_id]"

      assert_select "input#author_name[name=?]", "author[name]"

      assert_select "textarea#author_address[name=?]", "author[address]"

      assert_select "input#author_ctype[name=?]", "author[ctype]"

      assert_select "input#author_photo[name=?]", "author[photo]"
    end
  end
end

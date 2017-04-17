require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :isbn => "Isbn",
      :title => "Title",
      :price => 2,
      :publish => "Publish",
      :dl => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Isbn/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Publish/)
    expect(rendered).to match(/false/)
  end
end

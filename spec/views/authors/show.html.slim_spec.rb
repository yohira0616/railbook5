require 'rails_helper'

RSpec.describe "authors/show", type: :view do
  before(:each) do
    @author = assign(:author, Author.create!(
      :user => nil,
      :name => "Name",
      :address => "MyText",
      :ctype => "Ctype",
      :photo => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Ctype/)
    expect(rendered).to match(//)
  end
end

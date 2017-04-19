require 'rails_helper'

RSpec.describe "authors/index", type: :view do
  before(:each) do
    assign(:authors, [
      Author.create!(
        :user => nil,
        :name => "Name",
        :address => "MyText",
        :ctype => "Ctype",
        :photo => ""
      ),
      Author.create!(
        :user => nil,
        :name => "Name",
        :address => "MyText",
        :ctype => "Ctype",
        :photo => ""
      )
    ])
  end

  it "renders a list of authors" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Ctype".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end

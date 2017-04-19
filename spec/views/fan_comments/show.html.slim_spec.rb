require 'rails_helper'

RSpec.describe "fan_comments/show", type: :view do
  before(:each) do
    @fan_comment = assign(:fan_comment, FanComment.create!(
      :author_no => 2,
      :name => "Name",
      :body => "MyText",
      :deleted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end

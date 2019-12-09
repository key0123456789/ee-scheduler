require 'rails_helper'

RSpec.describe "wishes/index", type: :view do
  before(:each) do
    assign(:wishes, [
      Wish.create!(
        :name => "Name"
      ),
      Wish.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of wishes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

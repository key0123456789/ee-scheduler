require 'rails_helper'

RSpec.describe "wishes/edit", type: :view do
  before(:each) do
    @wish = assign(:wish, Wish.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit wish form" do
    render

    assert_select "form[action=?][method=?]", wish_path(@wish), "post" do

      assert_select "input[name=?]", "wish[name]"
    end
  end
end

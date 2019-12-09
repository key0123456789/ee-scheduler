require 'rails_helper'

RSpec.describe "wishes/new", type: :view do
  before(:each) do
    assign(:wish, Wish.new(
      :name => "MyString"
    ))
  end

  it "renders new wish form" do
    render

    assert_select "form[action=?][method=?]", wishes_path, "post" do

      assert_select "input[name=?]", "wish[name]"
    end
  end
end

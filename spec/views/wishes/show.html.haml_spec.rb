require 'rails_helper'

RSpec.describe "wishes/show", type: :view do
  before(:each) do
    @wish = assign(:wish, Wish.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end

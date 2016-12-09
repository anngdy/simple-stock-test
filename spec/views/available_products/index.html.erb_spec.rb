require 'rails_helper'

RSpec.describe "available_products/index", type: :view do
  before(:each) do
    assign(:available_products, [
      AvailableProduct.create!(
        :product => nil,
        :color => nil,
        :size => nil,
        :quantity => 2
      ),
      AvailableProduct.create!(
        :product => nil,
        :color => nil,
        :size => nil,
        :quantity => 2
      )
    ])
  end

  it "renders a list of available_products" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

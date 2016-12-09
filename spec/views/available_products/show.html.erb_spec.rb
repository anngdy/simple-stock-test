require 'rails_helper'

RSpec.describe "available_products/show", type: :view do
  before(:each) do
    @available_product = assign(:available_product, AvailableProduct.create!(
      :product => nil,
      :color => nil,
      :size => nil,
      :quantity => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end

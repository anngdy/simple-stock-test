require 'rails_helper'

RSpec.describe "available_products/new", type: :view do
  before(:each) do
    assign(:available_product, AvailableProduct.new(
      :product => nil,
      :color => nil,
      :size => nil,
      :quantity => 1
    ))
  end

  it "renders new available_product form" do
    render

    assert_select "form[action=?][method=?]", available_products_path, "post" do

      assert_select "input#available_product_product_id[name=?]", "available_product[product_id]"

      assert_select "input#available_product_color_id[name=?]", "available_product[color_id]"

      assert_select "input#available_product_size_id[name=?]", "available_product[size_id]"

      assert_select "input#available_product_quantity[name=?]", "available_product[quantity]"
    end
  end
end

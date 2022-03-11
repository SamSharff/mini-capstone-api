class ProductsController < ApplicationController
  def available_products
    available_products = Product.all
    render json: available_products.as_json
  end

  def single_product
    input_product = params["id"]
    product = Product.find_by(id: product_id)
    render json: product.as_json
  end
end

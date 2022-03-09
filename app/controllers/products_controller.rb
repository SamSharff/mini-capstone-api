class ProductsController < ApplicationController
  def available_products
    
    available_products = Product.all
    render json: available_products.as_json
  end

end

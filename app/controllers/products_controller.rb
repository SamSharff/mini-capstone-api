class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end
  
  def show
    product_id = params[:id]
    products = Product.find_by(id: product_id)
    render json: products.as_json
  end

  # def single_product
  #   input_product = params["id"]
  #   product = Product.find_by(id: product_id)
  #   render json: product.as_json
  # end
end

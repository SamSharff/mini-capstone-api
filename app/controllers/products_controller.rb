class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end
  
  def show
    product_id = params[:id]
    products = Product.find_by(id: product_id)
    render json: products.as_json(methods: [:is_discounted?, :tax, :total])
  end

  def create
    product = Product.new(
    name: params["name"],
    price: params["price"],
    image_url: params["image_url"],
    description: params["description"]

    )
    product.save
    render json: product.as_json
  end

  def update
    product_id = params[:id]
    products = Product.find_by(id: product_id)

    products.name = params["name"] || products.name
    products.price = params["price"] || products.price
    products.image_url = params["image_url"] || products.image_url
    products.description = params["description"] || products.description
    
    products.save
    render json: products.as_json
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)
  
    product.destroy 
    render json: {message: "Your product was destroyed!"}
  end
  
end

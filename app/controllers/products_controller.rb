class ProductsController < ApplicationController
  def index
    products = Product.all
    pp current_user
    @products = products
    render template: "products/index"
  end
  
  def show
    product_id = params[:id]
    products = Product.find_by(id: product_id)
    @product = products
    render template: "products/show"
    # render json: products.as_json(methods: [:is_discounted?, :tax, :total])
  end

  def create
    @product = Product.new(
    name: params["name"],
    price: params["price"],
    image_url: params["image_url"],
    description: params["description"]

    )
    if @product.save
      render template: "products/show"
    else
      render json: {errors: @product.errors.full_messages}, status: 422
    end
  end

  def update
    @product_id = params[:id]
    @products = Product.find_by(id: @product_id)

    @products.name = params["name"] || @products.name
    @products.price = params["price"] || @products.price
    @products.image_url = params["image_url"] || @products.image_url
    @products.description = params["description"] || @products.description
    
    if @products.save
      render template: "products/show"
    else
      render json: {errors: @products.errors.full_messages}, status: 422
    end
  end

  def destroy
    product_id = params[:id]
    product = Product.find_by(id: product_id)
  
    product.destroy 
    render json: {message: "Your product was destroyed!"}
  end
  
end

Rails.application.routes.draw do
get "/available_products", controller: "products", action: "available_products"

get "/single_product", controller: "products", action: "single_product"

end

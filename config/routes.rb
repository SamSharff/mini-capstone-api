Rails.application.routes.draw do
# get "/available_products", controller: "products", action: "available_products"

# get "/single_product", controller: "products", action: "single_product"

get "/products", controller: "products", action: "index"

get "/products/:id", controller: "products", action: "show"

end

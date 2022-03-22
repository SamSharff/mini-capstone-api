Rails.application.routes.draw do
get "/products", controller: "products", action: "index"
get "/products/:id", controller: "products", action: "show"
post "/products", controller: "products", action: "create"
patch "/products/:id", controller: "products", action: "update"
delete "/products/:id", controller: "products", action: "destroy"

post "/users" => "users#create" #sign up
post "/sessions" => "sessions#create" #sessions

post "/orders" => "orders#create" #creates order
get "/orders/:id" => "orders#show" #shows order
get "/orders/" => "orders#index" #shows order

end

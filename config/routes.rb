Rails.application.routes.draw do
  root "articles#index"

  get "/articles", to: "articles#index" # URL /articles skickas till action INDEX i controller ARTICLES
  get "/articles/:id", to: "articles#show" # URL /articles/186  skickas till action SHOW och 186 till params[:id]

end

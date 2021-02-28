Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  #index
  namespace :api do
    #index
    get "/fav_music" => "fav_music#index"
    #show
    get "/fav_music/:id" => "fav_music#show"
    #create
    post "/fav_music" => "fav_music#create"
  end
end

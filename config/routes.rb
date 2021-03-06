Rails.application.routes.draw do

  get '/' => 'features#index', as: 'root'
  post '/contact' => 'messages#create', as: 'contact'
  namespace :api do
    namespace :v1 do
      get 'blogs' => 'blogs#index'
      get 'blogs/:index' => 'blogs#show'
      get 'experiences/:year' => 'experiences#all_experiences'
    end
  end
  #admin routes
  get 'blogs/add' => 'users#add_blog'
  get '/blog/:url' => 'features#show'

end

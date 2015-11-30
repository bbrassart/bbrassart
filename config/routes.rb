Rails.application.routes.draw do
  #public routes
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
end

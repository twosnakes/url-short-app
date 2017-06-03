Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
   authenticated :user do
     root 'links#index', as: :authenticated_root
   end

   unauthenticated do
     root 'devise/registrations#new', as: :unauthenticated_root
   end
 end

get '/' => 'slugs#index' 
get '/slugs' => 'slugs#index'

get '/slugs/new' => 'slugs#new'
post '/slugs' => 'slugs#create'

get '/slugs/:id' => 'slugs#show'

get '/slugs/:id/edit' => 'slugs#edit'
patch '/slugs/:id' => 'slugs#update'

delete '/slugs/:id' => 'slugs#destroy'

 
end

Rails.application.routes.draw do
  
  get "/" => "gifs#index"
  get "/login" => "sessions#new"
  get "/sessions/create" => "sessions#create"
  get "/logout" => "sessions#destroy"
  
  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  #------------------------------
  
  
  # Routes for the Tag_association resource:
  # CREATE
  get '/new_tag_association' => 'tag_associations#new'
  get '/create_tag_association' => 'tag_associations#create'

  # READ
  get '/tag_associations' => 'tag_associations#index'
  get '/tag_associations/:id' => 'tag_associations#show'

  # UPDATE
  get '/tag_associations/:id/edit' => 'tag_associations#edit'
  get '/tag_associations/:id/update' => 'tag_associations#update'

  # DELETE
  get '/tag_associations/:id/destroy' => 'tag_associations#destroy'
  #------------------------------

  # Routes for the Tag resource:
  # CREATE
  get '/new_tag' => 'tags#new'
  get '/create_tag' => 'tags#create'

  # READ
  get '/tags' => 'tags#index'
  get '/tags/:id' => 'tags#show'

  # UPDATE
  get '/tags/:id/edit' => 'tags#edit'
  get '/tags/:id/update' => 'tags#update'

  # DELETE
  get '/tags/:id/destroy' => 'tags#destroy'
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get '/new_comment' => 'comments#new'
  get '/create_comment' => 'comments#create'

  # READ
  get '/comments' => 'comments#index'
  get '/comments/:id' => 'comments#show'

  # UPDATE
  get '/comments/:id/edit' => 'comments#edit'
  get '/comments/:id/update' => 'comments#update'

  # DELETE
  get '/comments/:id/destroy' => 'comments#destroy'
  #------------------------------

  # CREATE
  get "/new_gif" => "gifs#new"
  get "/create_gif" => "gifs#create"
  
  # READ
  get "/gifs/:id" => "gifs#show"
  get "/gifs" => "gifs#index"
  
  # UPDATE
  get "/gifs/:id/edit" => "gifs#edit"
  get "/gifs/:id/update" => "gifs#update"
  
  # DESTROY
  get "/gifs/:id/destroy" => "gifs#destroy"
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

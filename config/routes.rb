Rails.application.routes.draw do
  root to: "features#index"

  # resources :features do
  #   resources :comments
  # end
  
  get "features/:feature_id/comments" => "comments#index", as: :feature_comments
  post "features/:feature_id/comments" => "comments#create"
  get "features/:feature_id/comments/new" => "comments#new", as: :new_feature_comment
  get "features/:feature_id/comments/:id/edit" => "comments#edit", as: :edit_feature_comment
  get "features/:feature_id/comments/:id" => "comments#show", as: :feature_comment
  patch "features/:feature_id/comments/:id" => "comments#update"
  put "features/:feature_id/comments/:id" => "comments#update"
  delete "features/:feature_id/comments/:id" => "comments#destroy"


  get "features/" => "features#index", as: :features
  post "features/" => "features#create"
  get "features/new" => "features#new", as: :new_feature
  get "features/:id/edit" => "features#edit", as: :edit_feature
  get "features/:id" => "features#show", as: :feature
  patch "features/:id" => "features#update"
  put "features/:id" => "features#update"
  delete "features/:id" => "features#destroy"



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

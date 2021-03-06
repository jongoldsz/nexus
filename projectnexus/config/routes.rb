Projectnexus::Application.routes.draw do
  get "static_pages/about"

  get "static_pages/legal"

  resources :categories

  resources :messages

  resources :locations

  resources :supporters

  resources :authentications

  resources :projectresources

  resources :projecttags

  resources :levels

  resources :documents

  resources :resources

  resources :memberships

  resources :stages

  resources :comments

  resources :tags

  resources :discussions

  resources :blogentries

  resources :tasks

  resources :objectives

  resources :projects

  resources :collections

  match '/auth/facebook/callback' => 'authentications#create'
#  devise_for :users
#  resources :authentications

  resources :users
  
  root :to => 'index#index'
  
  match "/browse" => redirect("/projects")
  match "/projects/:id/home" => "projects#home"
  match "/signout" => "authentications#destroy", :as => :signout
  match "/projects/:id/people" => "memberships#index"
  match "/projects/:id/blog" => "blogentries#index"
  match "/projects/:id/blog/new" => "blogentries#new"
  match "/projects/:id/blog/:entry_id" => "blogentries#show"
  match "/projects/:id/blog/:entry_id/edit" => "blogentries#edit"

  #map.resources :projects, :controller => "browse"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

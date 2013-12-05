Build::Application.routes.draw do

  constraints(:host => "broadenandbuild.com") do
    match "(*x)" => redirect { |params, request|
      URI.parse(request.url).tap { |x| x.host = "www.broadenandbuild.com" }.to_s
    }
  end

  devise_for :users, :skip => [:sessions], :controllers => { :registrations => :registrations }
  as :user do
    get 'register' => 'registrations#new', :as => :new_user_registration 
    get 'login' => 'devise/sessions#new', :as => :new_user_session
    post 'login' => 'devise/sessions#create', :as => :user_session
    match 'logout' => 'devise/sessions#destroy', :as => :destroy_user_session,
      :via => Devise.mappings[:user].sign_out_via
  end

  resources :users
  resources :projects, :only => [:create, :destroy]
  resources :weeks, :only => [:create, :destroy]
  resources :quotes, :only => [:create, :destroy]
  resources :savors, :only => [:create, :destroy]
  resources :habits, :only => [:create, :destroy]
  resources :improvements, :only => [:create, :destroy]
  resources :needs, :only => [:create, :destroy]
  resources :funs, :only => [:create, :destroy]
  resources :expansions, :only => [:create, :destroy]
  resources :mostimportants, :only => [:create, :destroy]
  resources :procrastinates, :only => [:create, :destroy]
  resources :procrastinate1s, :only => [:create, :destroy]
  resources :procrastinate2s, :only => [:create, :destroy]
  resources :procrastinate3s, :only => [:create, :destroy]

  root to: 'static_pages#home'

  get "password_resets/new"

  match '/projects' => 'projects#projects', :via => :get
  match '/weekly' => 'weeks#weekly', :via => :get
  match '/quotes' => 'quotes#quotes', :via => :get
  match '/reflect' => 'static_pages#reflect', :via => :get
  match '/agent' => 'static_pages#agent', :via => :get
  match '/funs' => 'funs#funs', :via => :get
  match '/mostimportanttasks' => 'mostimportants#mostimportants', :via => :get
  match '/overcomingprocrastination' => 'static_pages#overcomingprocrastination', :via => :get

  match '/savor_the_moment' => 'static_pages#savor', :via => :get
  match '/habits_are_a_choice' => 'static_pages#habits', :via => :get
  match '/self_improvement' => 'static_pages#improvement', :via => :get
  match '/essential_needs' => 'static_pages#needs', :via => :get
  match '/expanding_awareness' => 'static_pages#expand', :via => :get
  match '/shine_from_within' => 'static_pages#shine', :via => :get
  match '/goal_setting' => 'static_pages#goals', :via => :get
  match '/donate' => 'static_pages#donate', :via => :get

  match '/help' => 'static_pages#help', :via => :get
  match '/about' => 'static_pages#about', :via => :get
  match '/contact' => 'static_pages#contact', :via => :get

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

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

Kodefuge::Application.routes.draw do

  devise_for :admins, :controllers => { :sessions      => 'admins/sessions' }
  devise_for :users, :controllers  => {:registrations  => 'registrations'}
  devise_for :users, :path => "auth", :path_names => { :sign_in      => 'login', 
                                                       :sign_out     => 'logout', 
                                                       :password     => 'secret', 
                                                       :confirmation => 'verification', 
                                                       :unlock       => 'unblock', 
                                                       :registration => 'register', 
                                                       :sign_up      => 'cmon_let_me_in' 
                                                      }

  authenticated :user do
     root :to => 'posts#index'
  end 

  # match "/posts/:id", :to => redirect("/posts/%{id}s")
  
  match '/home',         :to => 'pages#index'
  match '/about',        :to => 'pages#about'
  match '/bookshelf',    :to => 'books#index'
  match '/blog',         :to => 'posts#index'
  match '/videoshelf',   :to => 'pages#videoshelf'
  match '/portfolio',    :to => 'pages#portfolio'
  match '/frontend',     :to => 'pages#frontend'
  match '/backend',      :to => 'pages#backend'
  match '/responsive',   :to => 'pages#responsive'
  match '/testing',      :to => 'pages#testing'
  match '/mobile',       :to => 'pages#mobile'

   # routes from posts as a root
   # match "/posts/home(.:format)"        => "pages#index",         :as     => :home
   # match "/posts/about(.:format)"       => "pages#about",         :as     => :about
   # match "/posts/bookshelf(.:format)"   => "books#index",         :as     => :bookshelf
   # match "/posts/blog(.:format)"        => "posts#index",         :as     => :blog
   # match "/posts/videoshelf(.:format)"  => "pages#videoshelf",    :as     => :videoshelf
   # match "/posts/portfolio(.:format)"   => "pages#portfolio",     :as     => :portfolio
   # match "/posts/frontend(.:format)"    => "pages#frontend",      :as     => :frontend
   # match "/posts/backend(.:format)"     => "pages#backend",       :as     => :backend
   # match "/posts/responsive(.:format)"  => "pages#responsive",    :as     => :responsive
   # match "/posts/testing(.:format)"     => "pages#testing",       :as     => :testing
   # match "/posts/mobile(.:format)"      => "pages#mobile",        :as     => :mobile

   # oustside routing
   match "/posts/https://twitter.com/adam0964(.:format)"              => "pages#https://twitter.com/adam0964",     :as => :twitter
   match "/posts/https://github.com/Adam0964(.:format)"               => "pages#https://github.com/Adam0964",      :as => :github
   match "/posts/https://www.linkedin.com/in/adam0964(.:format)"      => "pages#https://linkedin.com/in/adam0964", :as => :linkedin
   
   # match "/posts/:id", :to => redirect("/posts/%{id}s")
   
  devise_scope :user do 
     match "/login",         :to => 'devise/sessions#new'
     match '/logout',        :to => 'devise/sessions#destroy'
     match '/signup',        :to => 'devise/registrations#create'
     match "/posts/login",   :to => "devise/sessions#new"
     match "/posts/logout",  :to => "devise/sessions#destroy"
     match "/posts/signup",  :to => "devise/sessions#create"
     match "/login2",        :to => 'devise/sessions#admin'
  end
  

  # match '/login2',                        :to => 'sessions#new', :as => :login
  # match '/auth/:provider/callback',       :to => 'sessions#create'
  # match '/auth/failure',                  :to => 'sessions#failure'
  # match '/posts/login2',                  :to => 'sessions#new', :as => :login
  # match '/posts/auth/:provider/callback', :to => 'sessions#create'
  # match '/callback',                      :to => 'sessions#create'
  
  # match '/auth/:service/callback'      => 'services#create' 
  # match "/posts/auth/:service/callback" => 'services#create' 
  
   # devise_scope :users do
   #    root :to => "users#new"
   # end

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  # resources :services, :only => [:index, :create, :destroy]
  
  # resources :activities
  resources :pages
  resources :books
  resources :users 
  resources :videos
  resources :posts do
      resources :comments
  end
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

  # namespace :posts do
  #   resources :sites_pages
  # end

  # You can have the root of your site routed with "root"
  #
  #just remember to delete public/index.html.
   root :to => 'pages#index'
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'

   # mount Flog::Engine, :at => "/flog"
end

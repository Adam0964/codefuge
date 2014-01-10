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
  
   root :to => 'pages#index'
  
   # mount Flog::Engine, :at => "/flog"
end

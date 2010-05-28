ActionController::Routing::Routes.draw do |map|
  map.resource :user_session, :only => [:new, :create, :destroy]
  map.resources :users, :only => [:new, :edit, :create, :update]
  map.resource :account, :controller => "users"
  map.root :controller => "app"
  map.login "login", :controller => "user_sessions", :action => "new" 
  map.login "logout", :controller => "user_sessions", :action => "destroy"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

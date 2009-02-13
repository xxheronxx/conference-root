ActionController::Routing::Routes.draw do |map|
  map.resources :schedules

  map.resources :brings

  map.resources :wears

  map.resources :users

  map.resources :questions

  map.root :controller => 'users', :action => 'home'
  
  map.resources :sessions
  map.resources :admins
  map.bring_ward 'bring/ward', :controller => 'brings', :action => 'ward'
  map.bring_indevidual 'bring/indevidual', :controller => 'brings', :action => 'index'
  map.download_list 'download_list', :controller => 'users', :action => 'download'
  map.connect ':controller/:action'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
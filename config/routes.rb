Forum::Application.routes.draw do
  resources :users


  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'users#home'


end

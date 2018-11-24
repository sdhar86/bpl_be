Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount Resque::Server, at: '/jobs'
  mount Resque::Server.new, :at => '/resque'
  mount ResqueWeb::Engine => '/resque_web'  
end

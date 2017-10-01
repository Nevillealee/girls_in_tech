Rails.application.routes.draw do
devise_for :users, controllers: { registrations: 'users/registrations', passwords: 'users/passwords' }
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :students

#students#index is the splash page after users authenticate
authenticated :user do
  root to:  'students#index', as: :authenticated_root
end
root to: redirect('/users/sign_in')

end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :articles, only: [:index, :new, :create, :edit, :update]

get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale

root to: 'navigator#index'

end

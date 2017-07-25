Rails.application.routes.draw do

  get 'home/index'

  get '/simulation' => 'simulation#index'

	get '/spotify' => 'spotify#index'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home, :path => '/', :only => [:index]

  resources :survey, param: :uuid, :only => [:show, :create]

  scope '/survey/:uuid' do
    resources :response, param: :uuid, :only => [:create, :index]
  end

end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # v2 api for app testing api
  scope module: :v2, constraints: ApiVersion.new('v2') do
    resources :todos, only: :index
  end

  # v1 api for end-to-end user api
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :todos do
      resources :items
    end
  end

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end

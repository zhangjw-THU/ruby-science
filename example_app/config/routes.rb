ExampleApp::Application.routes.draw do
  resources :questions, only: [:edit, :update] do
    resources :options, only: [:new, :create]
  end

  resources :surveys, only: [:new, :create, :index, :show] do
    resources :completions, only: [:create, :index]
    resources :questions, only: [:new, :create]
  end

  root to: 'surveys#index'
end
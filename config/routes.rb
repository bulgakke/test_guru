Rails.application.routes.draw do
  get 'questions/new'
  get 'questions/create'
  get 'controllername/new'
  get 'controllername/create'
  resources :tests do
    resources :questions, shallow: true
  end
end

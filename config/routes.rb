Rails.application.routes.draw do
  root to: 'dashboards#show'

  resources :entries
end

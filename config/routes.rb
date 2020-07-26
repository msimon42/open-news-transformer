Rails.application.routes.draw do
  root 'application#index'

  get '/articles/request', to: 'articles#request_form'
end

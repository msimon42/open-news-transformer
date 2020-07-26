Rails.application.routes.draw do
  root 'application#index'

  get '/articles/request', to: 'articles#request_form'
  post '/articles/request', to: 'articles#request'
end

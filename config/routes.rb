Rails.application.routes.draw do
  root 'application#index'

  get '/articles-request', to: 'articles#request_form'
  get '/articles-scrape', to: 'articles#scrape_form'
  get '/articles-results', to: 'articles#get_articles'
end

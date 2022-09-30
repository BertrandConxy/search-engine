Rails.application.routes.draw do
  get "/analytics", to: "analytics#index";
  root "articles#index";
  get '/articles:id', to: 'articles#show';
  post 'articles/search', to: 'articles#search';
end

# frozen_string_literal: true

Rails.application.routes.draw do
  # get '/bookmarks/new', to: 'bookmarks#new'
  # post '/bookmarks', to: 'bookmarks#create'
  # delete '/bookmarks/:list_id', to: 'bookmarks#destroy'
  # get '/lists', to: 'lists#index'
  # get '/lists/new', to: 'lists#new'
  # get '/lists/:id', to: 'lists#show', as: :list
  # post '/lists', to: 'lists#create'
  resources :lists, only: %i[index new show create] do
    resources :bookmarks, only: %i[index new create]
  end
  resources :bookmarks, only: %i[destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

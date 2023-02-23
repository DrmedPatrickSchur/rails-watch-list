Rails.application.routes.draw do
# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# Defines the root path route ("/")
# root "articles#index"
  get    "lists",          to: "lists#index",  as: :lists
  get    "lists/new",      to: "lists#new",    as: :new_list
  post   "lists",          to: "lists#create"

  get    "lists/:id",      to: "lists#show",   as: :list

  get    "lists/:id/edit", to: "lists#edit",   as: :edit_list
  patch  "lists/:id",      to: "lists#update"

  delete "lists/:id",      to: "lists#destroy"
end

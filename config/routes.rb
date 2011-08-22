ActiveCRM::Application.routes.draw do

  # resources :tasks
  # resources :opportunities
  # resources :leads
  # resources :emails
  # resources :contact_data
  # resources :contacts
  # resources :campaigns
  # resources :addresses
  # resources :activities
  # resources :account_contacts
  # resources :accounts

  ActiveAdmin.routes(self)

  devise_for :users, ActiveAdmin::Devise.config

  # root :to => 'welcome#index'
end

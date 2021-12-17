# frozen_string_literal: true

Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users,
             controllers: {
               registrations: :registrations, to: 'registrations#create',
               sessions: :sessions
             }
  namespace :api do
    namespace :v1 do
      post 'profile/create' => 'profiles#create'
      post 'facility_sport/create' => 'facility_sports#create'
      get 'facility_sport/index' => 'facility_sports#index'
      patch 'facility_sport/:id/update' => 'facility_sports#edit_id'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

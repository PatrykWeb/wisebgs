Rails.application.routes.draw do
  devise_for :users,
             controllers: {
               registrations: :registrations, to: 'registrations#create',
               sessions: :sessions
             }
  namespace :api, defaults: { format: :json } do
    namespace :v1, defaults: { format: :json } do
      post 'profile/create' => 'profiles#create'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# frozen_string_literal: true

namespace :api, defaults: { format: :json }  do
  namespace :v1 do
    resources :users, only: [:show]
    resources :merchants, only: [:create]
    resources :qr_codes, only: [:show]
    resources :visits, only: [:create, :index] do 
      member do 
        put :exit
      end
      collection do 
        get :ongoing
      end
    end
  end
end

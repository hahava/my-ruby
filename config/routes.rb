Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :boards do
      end
    end
  end
end

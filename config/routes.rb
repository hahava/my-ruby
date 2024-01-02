Rails.application.routes.draw do
  mount UsersApi => '/api'
  mount LoginApi => '/api'
end

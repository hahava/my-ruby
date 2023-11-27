class UsersApi < Grape::API

  version 'v1'
  format :json

  resource :users do
    desc 'register new member'
    params do
      requires :user_id, type: String, desc: 'user id'
      requires :nick_name, type: String, desc: 'nick name'
      requires :password, type: String, desc: '암호'
    end
    post do
      permitted_params = declared(params, include_missing: false)

      user = User.find_by(user_id: permitted_params[:user_id])

      if user
        status 409
      else
        User.create(permitted_params).save()
        status 201
      end
    end
  end
end


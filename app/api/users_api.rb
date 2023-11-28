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
      user = User.find_by(user_id: params[:user_id])

      return status 409 if user.present?

      if User.create(
        user_id: params[:user_id],
        password: BCrypt::Password.create(params[:password]),
        nick_name: params[:nick_name]
      )
        return status 201
      else
        return status 500
      end
    end
  end
end

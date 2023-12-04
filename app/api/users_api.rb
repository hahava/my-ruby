require_relative '../lib/response'

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
      user = User.where(user_id: params[:user_id]).or(User.where(nick_name: params[:nick_name])).first

      if user.present?
        status 409
        Response.new(code: 'error', message: 'duplicated id or nickname').to_json
      else

        if User.create(
          user_id: params[:user_id],
          password: BCrypt::Password.create(params[:password]),
          nick_name: params[:nick_name]
        ).present?

          status 201
          Response.new(code: 'code', message: 'success').to_json
        end

      end
    end
  end
end

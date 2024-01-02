class LoginApi < Grape::API

  version 'v1'
  format :json

  resource :login do
    desc 'login'
    params do
      requires :user_id, type: String, desc: 'user id'
      requires :password, type: String, desc: 'password'
    end
    post do
      user = User.find_by(user_id: params[:user_id])

      if BCrypt::Password.new(user.password) == params[:password]
        status 200
        payload = { sub: user.id, exp: Time.now.to_i + 3600 }
        token = JWT.encode(payload, 'secret', 'HS256')
        Response.new('success', token, 200)
      else
        status 400
        Response.new('error', 'login failed')
      end
    end
  end
end
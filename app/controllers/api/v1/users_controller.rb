class Api::V1::UsersController < ApplicationController
  protect_from_forgery with: :null_session

  def register
    @user = User.new(JSON.parse(request.body.read))

    result = @user.save

    if result
      render json: { status: 'success' }
    else
      render json: { status: 'bad_request' }
    end
  end
end


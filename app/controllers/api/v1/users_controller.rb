class Api::V1::UsersController < ApplicationController
  protect_from_forgery with: :null_session

  def register
    user_registration_request = JSON.parse(request.body.read)

    user_id = user_registration_request["user_id"]

    user = User.find_by(user_id: user_id)

    if user
       head :conflict
    else
      User.create(user_registration_request).save
      head :created
    end
  end
end


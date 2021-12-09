class SessionsController < Devise::SessionsController

  def create
    user = User.find_by(email: params[:email])

    if user && user.valid_password?(params[:password])
      token = user.generate_jwt
      render json: { token: token.to_json }
    else
      render json: { errors:  "email or password is invalid" }
    end
  end
end
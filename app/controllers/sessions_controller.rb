class SessionsController < Devise::SessionsController
  def create
    user = User.find_by(email: params[:email])

    if user && user.valid_password?(params[:password])
      token = user.generate_jwt
      render json: { token: token }, status: :created
    else
      render json: { errors: 'email or password in not valid' }, status: :unauthorized
    end
  end
end

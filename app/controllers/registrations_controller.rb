class RegistrationsController < Devise::RegistrationsController
  def create
    user = User.new(sign_up_params)
    if user.save
      token = user.generate_jwt
      render json: { token: token.to_json }
    else
      render json: { errors: 'email or password is invalid' }, status: :unauthorized
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end

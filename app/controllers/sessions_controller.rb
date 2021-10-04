class SessionsController < Devise::SessionsController
  def create
    user = User.find_by_email(sign_in_params[:name])

    if user && user.valid_password?(sign_in_params[:password])
      @current_user = user
    else
      render json: { errors: { 'name or password' => ['is invalid'] } }, status: :unprocessable_entity
    end
  end
end

class RegistrationsController < Devise::RegistrationsController

  def sign_up_params
    params.require(:user).permit(:description, :gender, :email, :password, :password_confirmation, :avatar)
  end

  def account_update_params
    params.require(:user).permit(:description, :gender, :email, :password, :password_confirmation, :current_password, :avatar)
  end
  
end
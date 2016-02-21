class RegistrationsController < Devise::RegistrationsController


  protected
  def sign_up_params
    params.require(:user).permit(:username, :firstname, :lastname, :email, :password, :password_confirmation, :owner, :terms_accepted)
  end
  def account_update_params
    params.require(:user).permit(:username, :firstname, :lastname, :email, :password, :password_confirmation, :current_password)
  end

end

class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:artist).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:artist).permit(:name, :avatar, :location, :bio, :website, :username, :email, :password, :password_confirmation, :current_password)
  end
end

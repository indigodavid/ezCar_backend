class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json
  def create
    build_resource(sign_up_params)
    resource.save
    sign_in(resource_name, resource)
    render json: resource
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :photo, :email, :password, :password_confirmation, :date_of_birth)
  end
end

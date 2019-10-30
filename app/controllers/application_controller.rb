class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path(resource)
    case resource
    when User
      rankings_path
    end
  end


  protected

  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    # devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:profile_image,:name])
  end
  private 

      def logical_delete_user
          if current_user&.is_delete == 'remove'
              flash[:alert] = 'このアカウントは現在使用することができません'
              redirect_to root_path
          end
        end
          

end

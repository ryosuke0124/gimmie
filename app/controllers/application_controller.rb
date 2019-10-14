class ApplicationController < ActionController::Base
  def after_sign_in_path(resource)
    case resource
    when User
      rankings_path
    end
  end

  private 

        def logical_delete_user
            if current_user&.is_delete == 'remove'
                flash[:alert] = 'このアカウントは現在使用することができません'
                redirect_to root_path
            end
         end

end

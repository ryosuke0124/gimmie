class ApplicationController < ActionController::Base
  def after_sign_in_path(resource)
    case resource
    when User
      rankings_path
    end
  end


end

class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def after_sign_in_path_for(resource)
    case resource
    when User
      root_path
    end
  end

  def user_not_authorized
    flash[:danger] = "#Uncool - You can't do it!"
    redirect_to request.referrer || root_path
  end
end

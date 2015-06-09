class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_admin
    @current_admin ||= Admin.where(id: session[:admin_id]).first
  end
  helper_method :current_admin

  private

  def authenticate_admin
    unless session[:admin_id].present? && current_admin.present?
      flash[:alert] = 'Sorry, you need to be logged in to do that.'
      redirect_to login_path
    end
  end
  
end

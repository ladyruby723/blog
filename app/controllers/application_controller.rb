class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def access_denied(exception)
    redirect_to root_path, alert: exception.message #if admin access denied to user/contributor, display exception message in browser.
  end
end

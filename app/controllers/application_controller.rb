class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    flash[:notice] = "早安！CFer！"
  end

end

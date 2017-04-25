class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    flash[:notice] = "早安！CFer！"
  end

  def require_is_owner
     if !current_user.owner?
       flash[:alert] = 'You are not box owner.'
       redirect_to root_path
     end
   end

end

class ApplicationController < ActionController::Base
  def admin_requried
    if !current_user.admin?
      redirect_to "/", alert: "You are not admin."
    end
  end
end

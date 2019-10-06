class WelcomeController < ApplicationController
  def index
    flash[:notice] = "欢迎进入最实惠商店！"
  end
end

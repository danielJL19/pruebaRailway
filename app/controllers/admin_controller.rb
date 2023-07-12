class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin
  def index
    @users= User.all
  end

  private 

  def authenticate_admin
    #admin: true or false, si no es admin, lo llevara a root_path
    unless current_user.admin
      redirect_to root_path
    end
  end
end

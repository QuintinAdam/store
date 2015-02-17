class Admin::BaseController < ApplicationController
  before_action :authenticate_admin!

  def index

  end

  private

  def authenticate_admin!
    redirect_to root_url unless spree_current_user && spree_current_user.admin?
  end

end

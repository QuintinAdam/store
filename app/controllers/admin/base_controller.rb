class Admin::BaseController < ApplicationController
  before_action :permit_seo!

  private
  def permit_seo!
    redirect_to admin_seo_path if current_user.has_role? :seo
  end

end

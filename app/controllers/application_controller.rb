class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :get_meta_tags

  private

  def get_meta_tags
    @meta_data = MetaTag.where(page_lookup: "#{request.path_parameters[:controller]}##{request.path_parameters[:action]}" + ( request.path_parameters[:id] ? "##{request.path_parameters[:id]}" : "" ))
  end

end

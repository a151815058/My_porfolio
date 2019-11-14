class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include DeviseWhitelist

  before_action :set_source

  def set_source
  	session[:source] = params[:q] if params[:q] #如果參數q存在，則把參數q傳到session的source裡
  end
end
 
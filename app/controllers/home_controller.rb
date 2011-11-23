class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    render :text => "Welcome #{current_user.email}!"
  end

  def edit_profile
    render :text => "yahoo "
  end
end

class HomeController < ApplicationController
  layout 'application'
  def index
    render :text => "Welcome to myinvitation", :layout => true
  end

  def edit_profile
    render :text => "yahoo "
  end
end

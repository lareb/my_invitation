class HomeController < ApplicationController
  layout 'application'
  def index
    render :text => "Welcome to myinvitation", :layout => true
  end

end

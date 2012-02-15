class PortfolioController < ApplicationController
  before_filter :authenticate_user!
  def index
    #render :text => "Welcome #{current_user.email}!"
  end

end

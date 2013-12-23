class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @buildinglog = Buildinglog.new
    @buildinglogs = Buildinglog.all
  end
  
end

class DashboardController < ApplicationController
  def index
    @users = User.all
  end
end

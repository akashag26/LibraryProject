class HomesController < ApplicationController
  def show
    @user = @current_user
  end

  def manageroom
    @user = @current_user
  end

end

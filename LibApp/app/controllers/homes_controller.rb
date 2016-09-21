class HomesController < ApplicationController
  def show
    @user = @current_user
  end

  def managerooms
  @user = @current_user
  end

  def managelibmember
    @user = @current_user
  end

end

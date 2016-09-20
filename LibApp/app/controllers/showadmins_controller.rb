class ShowadminsController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @details = Detail.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @detail = Detail.where(:email => current_user.email)
  end

  # DELETE /users/1
  # DELETE /users/1.json


end

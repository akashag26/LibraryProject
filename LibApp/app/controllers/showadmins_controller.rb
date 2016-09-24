class ShowadminsController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @details = Detail.select("details.*").joins('left outer join users on users.email = details.email').where(:users => {:kind => %w(admin super-admin)})
  end


  # GET /users/1
  # GET /users/1.json
  def show
    @detail = Detail.where(:email => current_user.email)
  end

end

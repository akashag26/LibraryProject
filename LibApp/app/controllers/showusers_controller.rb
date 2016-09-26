class ShowusersController < ApplicationController
    # GET /users
    # GET /users.json
    def index
      #@details = Detail.all
      @details = Detail.select("details.*").joins('left outer join users on users.email = details.email').where(:users => {:kind => "user"})
    end

    # GET /users/1
    # GET /users/1.json
    def show
      @detail = Detail.where(:email => current_user.email)
    end

    def show_history
      @details = Detail.select("details.*").joins('left outer join users on users.email = details.email').where(:users => {:kind => "user"})
    end

end

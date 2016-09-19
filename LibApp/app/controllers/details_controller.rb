class DetailsController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @details = Detail.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @detail = Detail.find_by(email: current_user.email)
  end

  def update
    puts current_user.email
    Detail.where(:email => current_user.email).update_all(:city => params[:detail][:city], :state =>params[:detail][:state] , :zipcode =>params[:detail][:zipcode] , :country =>params[:detail][:country], :phoneno =>params[:detail][:phoneno] , :address =>params[:detail][:address] ,:lastname =>params[:detail][:lastname])
    flash[:success] = "Profile Details Successfully Updated!"
    redirect_to userdetails_path(@current_user)


    #if @detail.save
      #log_in @detail

      #redirect_to  :home_path
    #else
      #render 'new'
    #end
  end



end

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

  # POST /details/1
  # POST /users/1.json
  def myshow
    @detail = Detail.find_by(email: params[:adminemail])
  end

  def update
    puts current_user.email
    Detail.where(:email => current_user.email).update_all(:city => params[:detail][:city], :state =>params[:detail][:state] , :zipcode =>params[:detail][:zipcode] , :country =>params[:detail][:country], :phoneno =>params[:detail][:phoneno] , :address =>params[:detail][:address] ,:lastname =>params[:detail][:lastname])
    flash[:success] = "Profile Details Successfully Updated!"
    redirect_to userdetails_path(@current_user)
  end


  def destroy
    @detail = Detail.find(params[:id])
    adminemail = @detail.email
    @detail.destroy
    User.find_by(email: adminemail).delete
    respond_to do |format|
      format.html { redirect_to showadmins_path, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


end

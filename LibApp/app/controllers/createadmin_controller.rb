class CreateadminController < ApplicationController

  def show
    @user = User.new
  end

  # GET /users/1
  # GET /users/1.json
 # POST /users
  # POST /users.json

  def myaction
    @user  = User.new(user_params)
    if @user.save
      temp = Detail.new(firstname: @user.name , email: @user.email)
      temp.save!
      flash[:success] = "Admin Added Succesfully!"
      redirect_to manageadmin_path(@current_user)

    else
    render html: "done"
    end

  end

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :kind)
  end

end
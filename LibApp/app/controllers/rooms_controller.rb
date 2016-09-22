class RoomsController < ApplicationController
  def add
    @room = Room.new
  end

  def delete
  end

  def show
    @rooms = Room.all
  end

  def update
  end

  def show_history
  end

  # POST /users
  # POST /users.json
  def create
    @room = Room.new(room_params)    # Not the final implementation!
    if @room.save
      flash[:success] = "You have successfully added a room!"
      redirect_to @room
    else
      render 'new'
    end
  end

  def room_params
    params.require(:room).permit(:room_no, :size, :building,
                                 :status)
  end
end

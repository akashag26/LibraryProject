class RoomsController < ApplicationController

  def add
    @room = Room.new
  end

  def show
    @rooms = Room.all
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    if @room.update_attributes(room_params)
      redirect_to :action => 'show'
    else
      render :action => 'edit'
    end
  end

  def show_schedule
    @rooms = Room.select('rooms.room_no').order('rooms.room_no')
  end

  def show_history
  end

  def detailsofroom
    @room=Room.find(params[:room_id])
    @bookings=Booking.find_by(room_no: @room.room_no)

  end


  # POST /users
  # POST /users.json
  def create
    @room = Room.new(room_params) # Not the final implementation!
    if @room.save
      flash[:success] = 'You have successfully added a room!'
      redirect_to @room
    else
      flash[:error] = @room.errors
      render 'add'
    end
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    flash[:success] = "Room deleted"
    redirect_to rooms_show_path
  end

  def room_params
    params.require(:room).permit(:room_no, :size, :building,
                                 :status)
  end
end

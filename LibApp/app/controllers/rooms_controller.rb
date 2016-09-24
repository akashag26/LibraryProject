class RoomsController < ApplicationController
  def add
    @room = Room.new
  end

  def delete
  end

  def show
    @room = Room.find(params[:id])
    @rooms = Room.all
  end

  def update
  end

  def show_history
  end

  def detailsofroom
    @room=Room.find(1)
    @booking=Booking.find_by(room_no: @room.room_no)

  end

  def view_details
    render html: 'Here'
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

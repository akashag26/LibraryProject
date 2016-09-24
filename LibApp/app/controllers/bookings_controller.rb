class BookingsController < ApplicationController
  #before_action :set_booking, only: [:index, :edit, :destroy]
  def index
    @bookings = Booking.all
    #render html: 'Inside index'
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @booking = Booking.find(params[:id])
  end

  # GET /users/new
  def new0
    @room=Room.find(params[:id])
    @date=params[:date]
    @user=@current_user
    @booking = Booking.new
  end
  def new1
    @room=Room.find(params[:id])
    @date=params[:date]
    @user=@current_user
    @booking = Booking.new
  end
  def new2
    @room=Room.find(params[:id])
    @date=params[:date]
    @user=@current_user
    @booking = Booking.new
  end
  def new3
    @room=Room.find(params[:id])
    @date=params[:date]
    @user=@current_user
    @booking = Booking.new
  end
  def new4
    @room=Room.find(params[:id])
    @date=params[:date]
    @user=@current_user
    @booking = Booking.new
  end
  def new5
    @room=Room.find(params[:id])
    @date=params[:date]
    @user=@current_user
    @booking = Booking.new
  end


  # GET /users/1/edit
  def edit
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      flash[:success] = 'You have successfully booked a room!'
      #render html: @booking.room_id
      redirect_to rooms_detailsofroom_path(:room_id => @booking.room_id)
    else
      flash[:error] = 'Unsuccessful Operation!'
      redirect_to rooms_detailsofroom_path(:room_id => @booking.room_id)
    end
  end

  def update
    @booking = Booking.find(params[:id])

    if @booking.update(booking_params)
      redirect_to @booking
    else
      render 'edit'
    end
  end

  def roomreservation
    @bookings =Booking.all
  end

  def destroybooking
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    roomid=@booking.room_id
    @booking.destroy
    #flash[:success] = "User deleted"
    redirect_to rooms_detailsofroom_path(:room_id => roomid)
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_booking
    @booking = Booking.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  private

  def booking_params
    params.require(:booking).permit( :booking_ID, :user, :email, :start_time, :end_time, :room_no, :booking_date,
       :building, :size, :room_id)
  end

end

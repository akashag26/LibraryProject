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
  def new
    @booking = Booking.new
  end

  # GET /users/1/edit
  def edit
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(article_params)

    if @booking.save
      redirect_to @booking
    else
      render 'new'
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

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    #flash[:success] = "User deleted"
    redirect_to roomreservation_path
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_booking
    @booking = Booking.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  private

  def booking_params
    params.require(:booking).permit( :booking_ID, :user, :email, :start_time, :end_time, :room_no, :booking_time,
       :building, :size)
  end
end

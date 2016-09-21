class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
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
  end

  def roomreservation
    @users=User.all
    @bookings =Booking.all
  end

  def delete
    render html: 'Delete Reservation'
  end
end

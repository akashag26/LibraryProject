class BookingsController < ApplicationController
  #before_action :set_booking, only: [:index, :edit, :destroy]
  def index
    @bookings = Booking.all
    @team = User.select(:email)

    #render html: 'Inside index'
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @booking = Booking.find(params[:id])
    @team = User.select(:email)

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
    @tempuser=User.find_by(email: @booking.email)
    if @tempuser != nil
      @booking.user=@tempuser.name

      mymessages = []
      if @current_user.kind == 'user'
        arr = @booking.members.split(',')
        mymessages.push("Email sent to " + "#{current_user.email}")
        mystring = ""

        arr.each { |x|
          if !User.find_by(email: x.strip.downcase)
            mystring= "Email Not sent to " + "#{x.strip.downcase}" + ": Invalid Email "
            mymessages.push(mystring)
          else
            if x.strip.downcase != @current_user.email
              mystring= "Email sent to " + "#{x.strip.downcase}"
              mymessages.push(mystring)
            end
          end }

      end


      if @booking.save
        mymessages.push('You have successfully booked a room!')
        flash[:success] = mymessages.join("<br/>".html_safe)
        #render html: @booking.room_id

        temp = BookingHistory.new(room_no: @booking.room_no,
                                  user: @booking.user,
                                  email: @booking.email,
                                  booking_date: @booking.booking_date,
                                  startime: @booking.start_time,
                                  endtime: @booking.end_time,
                                  building: @booking.building,
                                  size: @booking.size,
                                  isCancelled: "false",
                                  room_id: @booking.room_id)
        temp.save!
        if current_user.kind=="user"
          redirect_to home_path
        else
          redirect_to rooms_detailsofroom_path(:room_id => @booking.room_id)
        end

      else
        flash[:error] = 'Unsuccessful Operation!'
        redirect_to rooms_detailsofroom_path(:room_id => @booking.room_id)
      end
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
    @bookings = Booking.all.where(email: current_user.email)
  end

  def destroybooking
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    roomid=@booking.room_id
    @booking_history=BookingHistory.find_by(room_no: @booking.room_no, email: @booking.email, booking_date: @booking.booking_date,
                                            startime: @booking.start_time);
    @booking_history.update_attributes(isCancelled: "true")
    @booking.destroy
    #flash[:success] = "User deleted"
    if current_user.kind=="user"
      redirect_to home_path
    else
      redirect_to rooms_detailsofroom_path(:room_id => roomid)
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_booking
    @booking = Booking.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  private

  def booking_params
    params.require(:booking).permit(:booking_ID, :user, :email, :start_time, :end_time, :room_no, :booking_date,
                                    :building, :size, :room_id, :members)
  end

  def booking_history_params
    params.require(:booking_history).permit(:room_no, :user, :email, :booking_date, :startime, :building, :size, :room_id)
  end

end

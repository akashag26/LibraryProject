class BookingHistoriesController < ApplicationController

  def new
    @booking_history=BookingHistory.new
  end


  def showroomhistory
    @room=Room.find(params[:room_id])
    @booking_histories=BookingHistory.all.where(room_no: @room.room_no)
  end

  def showuserhistory
    if params[:email]
      @booking_histories = BookingHistory.all.where(email: params[:email])
    else
      @booking_histories = BookingHistory.all.where(email: current_user.email)
    end
  end

  def booking_history_params
    params.require(:booking_history).permit(:room_no, :user, :email, :booking_date, :startime, :building, :size, :room_id)
  end


  def booking_history_params
    params.require(:booking_history).permit(:id, :room_no, :user, :email, :booking_date, :startime, :building, :size, :room_id)
  end
end

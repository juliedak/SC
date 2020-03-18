class BookingsController < ApplicationController


  def index
  end

  def create
    @booking = Booking.new(booking_params)
    @clothe = Clothe.find(params[:clothe_id])
    @user = current_user
    @booking.clothe = @clothe
    @booking.user = @user
    @booking.status = 'pending'
    if @booking.save!
      redirect_to bookings_path
    else
      render 'clothes/show'
    end
  end

  def new
    @clothe = Clothe.find(params[:bar_id])
    @booking = Booking.new
  end


  def update
    if @booking.update(booking.params)
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end

  def approve
    @booking.update(status: 'approved')
    redirect_to booking_path(@booking)
  end

  def deny
    @booking.update(status: 'deny')
    redirect_to booking_path(@booking)
  end

  def cancel
    @booking.update(status: 'cancel')
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :clothe_id, :user_id)
  end
end


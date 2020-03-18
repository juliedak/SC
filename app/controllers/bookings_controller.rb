class BookingsController < ApplicationController

def new


end


def create

end

private

def booking_params
  params.require(:booking).permit(:status, :start_date, :end_date, :clothe_id, :user_id)

end
end


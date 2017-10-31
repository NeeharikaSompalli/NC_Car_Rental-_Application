class CarDropoffFailJob < ApplicationJob
  queue_as :urgent

  def perform(rental_entry, user, car)
    # Do something later

    if car.status == 'CHECKED-OUT'

      car.status = 'AVAILABLE'
      car.save

      user.current_booking = 'FALSE'
      user.save

    end

  end
end

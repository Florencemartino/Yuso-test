class Driver < ApplicationRecord
  has_many :rides
  validates :phone_number, uniqueness: true

  def available_at?(time)
    rides.each do |ride|
      if time.between?(ride.pick_up_datetime, ride.drop_off_datetime)
        return false
      end
    end
    return true
  end

  def available?
    available_at?(Time.now)
  end
end

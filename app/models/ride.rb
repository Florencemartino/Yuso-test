class Ride < ApplicationRecord
  belongs_to :driver

  belongs_to :pick_up_point, class_name: 'GeographicPoint'
  belongs_to :drop_off_point, class_name: 'GeographicPoint'
end

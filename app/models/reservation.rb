class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :room

  def price
    room.price
  end

  def total
    room.price * 1.09
  end
  
end

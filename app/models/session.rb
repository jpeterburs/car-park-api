class Session < ApplicationRecord
  validates_presence_of :license_plate, :entered_at

  belongs_to :permanent_parker

  def to_s
    "#{id} | #{license_plate}"
  end
end

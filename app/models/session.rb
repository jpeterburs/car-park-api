class Session < ApplicationRecord
  MAX_CAPACITY = 180.freeze
  RESERVED = 40.freeze

  validates_presence_of :license_plate, :entered_at

  belongs_to :permanent_parker, optional: true

  scope :active, -> { where.not(entered_at: nil).where(exited_at: nil) }
  scope :with_permanent_parker, -> { where.not(permanent_parker_id: nil) }
  scope :without_permanent_parker, -> { where(permanent_parker_id: nil) }

  def to_s
    "#{id} | #{license_plate}"
  end
end

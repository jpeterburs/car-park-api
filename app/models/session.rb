class Session < ApplicationRecord
  validates_presence_of :license_plate, :entered_at

  validate :dates_cannot_be_updated
  validate :exited_at_must_be_in_future

  belongs_to :permanent_parker, optional: true

  def to_s
    "#{id} | #{license_plate}"
  end

  private

  def dates_cannot_be_updated
    %i[entered_at exited_at].each do |attr|
      errors.add(attr, 'cannot be updated') if send(attr).present? && changes[attr]
    end
  end

  def exited_at_must_be_in_future
    if entered_at.present? && exited_at.present?
      errors.add(:exited_at, 'must be in future') if entered_at > exited_at
    end
  end
end

class PermanentParker < ApplicationRecord
   validates_presence_of :first_name, :last_name,
     :street_name, :building_number, :zip, :city

  def to_s
    name
  end

  def name
    "#{first_name} #{last_name}"
  end
end

# frozen_string_literal: true

# A constituency is the body of citizens in an electorial district.
# Each constituency is alotted a number of seats in parliament, out of
# the total 349.
#
# @!attribute district_name
#   @return [String] the name of this constituency's district
#
# @!attribute seat_count
#   @return [Integer] the number of seats alotted to this constituency
#
class Constituency < ApplicationRecord
  validates :district_name, presence: true
  validates :seat_count,    presence: true,
                            numericality: { only_integer: true,
                                            greater_than: 0 }
end

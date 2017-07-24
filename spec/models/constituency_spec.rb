# frozen_string_literal: true

require "rails_helper"

RSpec.describe Constituency do
  subject(:constituency) { FactoryGirl.build(:constituency) }

  it { is_expected.to validate_presence_of(:district_name) }
  it { is_expected.to validate_numericality_of(:seat_count).only_integer.is_greater_than(0) }
end

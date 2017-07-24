# frozen_string_literal: true

return unless Constituency.none?

constituencies = YAML.load_file("#{__dir__}/data/constituencies.yml")

constituencies.values.first.each do |constituency|
  Constituency.create!(
    district_name: constituency["district_name"],
    seat_count:    constituency["seat_count"]
  )
end

hash = {}
hash[:name] = "Suzuki"
hash[:height] = 1.6
hash[:weight] = 60
hash[:bmi] = (hash[:weight] / hash[:height] ** 2).round(1)
hash.each do |key, value|
  puts "#{key}: #{value}"
end
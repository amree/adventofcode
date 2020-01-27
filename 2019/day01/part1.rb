input = File.read("input.txt")

puts input.split("\n").reduce(0) { |fuel, mass| fuel + (mass.to_i / 3) - 2 }

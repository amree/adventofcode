input = File.read("input.txt")

def calculate(input, total = 0)
  fuel = (input / 3) - 2

  if fuel < 0
    total
  else
    calculate(fuel, total + fuel)
  end
end

puts input.split("\n").reduce(0) { |fuel, mass| fuel + calculate(mass.to_i) }

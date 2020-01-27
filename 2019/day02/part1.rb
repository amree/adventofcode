input = File.read("input.txt").strip.split(",").map(&:to_i)
input[1] = 12
input[2] = 2

output = input

input.each_slice(4).each do |slice|
  if slice[0] == 1
    output[slice[3]] = output[slice[1]] + output[slice[2]]
  elsif slice[0] == 2
    output[slice[3]] = output[slice[1]] * output[slice[2]]
  elsif slice[0] == 99
    next
  end
end

p output

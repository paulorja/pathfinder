from_x = 0
from_y = 0

to_x = 2
to_y = 2

grid = "11111,11111,11111,11111,11111"

path = %x[./run #{from_x} #{from_y} #{to_x} #{to_y} #{grid}]

puts path

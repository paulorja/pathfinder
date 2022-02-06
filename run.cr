require "./pathfinder.cr"

grid = Array(Array(Int32)).new

# 11111,11111,11110,11111
ARGV[4].split(",").each do |line|
  
  grid << Array(Int32).new
  
  line.each_char do |char|
    grid.last << char.to_i
  end
end

pf = Pathfinder.new(grid)

pf.start(ARGV[0].to_i, ARGV[1].to_i)
pf.dest(ARGV[2].to_i, ARGV[3].to_i)

output = ""

pf.search.each do |path|
  output += path[:x].to_s + "," + path[:y].to_s + ";"
end

puts output


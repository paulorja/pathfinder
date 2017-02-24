# Pathfinder
A simple pathfinding class for games; written in Crystal.


# How to use

```
require "./pathfinder.cr"

# 0 = wall
# 1 = walkable
grid = [
  [1, 1, 1],
  [1, 0, 0],
  [1, 1, 1],
]

pf = Pathfinder.new(grid)

pf.start(0, 0)
pf.dest(2, 2)

result = pf.search
```


## Accessing/modifying the grid

Pathfinder uses keeps a reference to the grid passed in.
You can change the grid like this:
```
pf.grid[0][0] = 0 # set to wall.
```
Or by changing the grid that was passed in to the Pathfinder class at initializaton directly.
```
grid[0][0] = 1 # changes the pf.grid[0][0] to 1.
```

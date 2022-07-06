ExampleTable =
{
  {1, 2, 3, 4},
  {5, 6, 7, 8}
}
print(ExampleTable[1][3]) -- Prints "3"
print(ExampleTable[2][4]) -- Prints "8"

function Point(x, y)        -- "Point" object constructor
    return { x = x, y = y }   -- Creates and returns a new object (table)
end

array = { Point(10, 20), Point(30, 40), Point(50, 60) }   -- Creates array of points
-- array = { { x = 10, y = 20 }, { x = 30, y = 40 }, { x = 50, y = 60 } };
print(array[2].y)
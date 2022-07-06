local Vector = {}
Vector.__index = Vector

function Vector:new(x, y, z)    -- The constructor
  -- Here, self refers to whatever class's "new"
  -- method we call.  In a derived class, self will
  -- be the derived class; in the Vector class, self
  -- will be Vector
  return setmetatable({x = x, y = y, z = z}, self)
end

function Vector:magnitude()     -- Another method
  -- Reference the implicit object using self
  return math.sqrt(self.x^2 + self.y^2 + self.z^2)
end

-- Example of class inheritance
local VectorMult = {}
VectorMult.__index = VectorMult
setmetatable(VectorMult, Vector) -- Make VectorMult a child of Vector

function VectorMult:multiply(value) 
  self.x = self.x * value
  self.y = self.y * value
  self.z = self.z * value
  return self
end

local vec = VectorMult:new(0, 1, 0) -- Create a vector
print(vec:magnitude())          -- Call a method (output: 1)
print(vec.y)                    -- Access a member variable (output: 1)
vec:multiply(2)                 -- Multiply all components of vector by 2
print(vec.y)                    -- Access member again (output: 2)
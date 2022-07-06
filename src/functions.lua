-- defines a factorial function
function fact (n)
  if n == 0 then
    return 1
  else
    return n * fact(n-1)
  end
end

do
  local oldprint = print
  -- Store current print function as oldprint
  function print(s)
    --[[ Redefine print function. The usual print function can still be used
      through oldprint. The new one has only one argument.]]
    oldprint(s == "foo" and "bar" or s)
  end
end

function addto(x)
  -- Return a new function that adds x to the argument
  return function(y)
    --[=[ When we refer to the variable x, which is outside the current
      scope and whose lifetime would be shorter than that of this anonymous
      function, Lua creates a closure.]=]
    return x + y
  end
end
fourplus = addto(4)
print(fourplus(3))  -- Prints 7

--This can also be achieved by calling the function in the following way:
print(addto(4)(3))
--[[ This is because we are calling the returned function from 'addto(4)' with the argument '3' directly.
  This also helps to reduce data cost and up performance if being called iteratively.
]]
  
print("enter a number:")
a = io.read("*number")        -- read a number
print(fact(a))
  
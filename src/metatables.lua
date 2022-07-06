fibs = { 1, 1 }                                -- Initial values for fibs[1] and fibs[2].
setmetatable(fibs, {
  __index = function(values, n)                --[[__index is a function predefined by Lua, 
                                                   it is called if key "n" does not exist.]]
    values[n] = values[n - 1] + values[n - 2]  -- Calculate and memoize fibs[n].
    return values[n]
  end
})
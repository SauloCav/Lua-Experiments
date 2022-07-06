while condition do
    --statements
end
  
repeat --similar to do while
    --statements
until condition
  
for i = first, last, delta do  --delta may be negative, allowing the for loop to count down or up
    --statements
    --example: print(i)
end

for key, value in pairs(_G) do -- generic for
    print(key, value)
end
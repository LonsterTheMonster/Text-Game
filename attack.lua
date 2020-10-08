local function rnd()
   local base = 100000
   local x = (math.random(0,base+1)-1)/base
   if x<0 then return rnd() end
   return x
end

local function test(n)
  local k=1
  local x
  math.randomseed(os.time()) 
  for i=1,n do
    x = rnd()
    if x==0 then k=k+1 end
  end
  print("You lit the " .. enemy .." " .. k .. " points with your " .. weapon_choice)
end

test(100000)
enemy = "zombie"
print("A Zombie is coming torwards you which weapon are you gonna do about it?")
io.write("Use Primary or Secondary or Side Arm?")
weapon = io.read()
if weapon == "Primary" then 
  weapon_choice = primary_input
  dofile("attack.lua")
elseif weapon == "Secondary" then 
  weapon_choice = secondary_input
  dofile("attack.lua")
elseif weapon == "Side Arm" then 
  weapon_choice = sidearm_input
  dofile("attack.lua")
end

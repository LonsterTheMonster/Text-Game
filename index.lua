

variable_one = " how are you doing "
variable_two = "today you are "
variable_three = " today we are going on a quest"
weapon_choice = ""
enemy = ""
primary_input = ""
secondary_input = ""
sidearm_input = ""


--works
--Code for your name
io.write("Enter your name: ")
name_input = io.read()
--works
--Code for your age
io.write("Enter your age: ")
age_input = io.read()

--Code for going on quest
print("Hello " .. name_input .. variable_three .. ".")
dofile("weapon.lua")
dofile("zombie.lua")
local start = os.clock()
while os.clock() - start < 5 do end
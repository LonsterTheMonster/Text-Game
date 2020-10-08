--Code for quest no
if quest_input == "No" then
elseif quest_input == "NO" then
elseif quest_input == "nO" then
elseif quest_input == "Na" then
elseif quest_input == "NA" then
elseif quest_input == "nA" then
elseif quest_input == "" then
--Code for Survival Book
print("Almost ready for survival for your life!")
print("You have a book that teaches you about the art of survival it says this.")
print("The art of survival is like martial arts except you can trust no one.")

end

if fourquest_input == "one" then
elseif fourquest_input == "1" then
print("Great!")
--Code for Survival Book
print("Almost ready for survival for your life!")
print("You have a book that teaches you about the art of survival it says this.")
print("The art of survival is like martial arts except you can trust no one.")
--Code for The First Zombie
print("Oh no! A Zombie is coming at you!")
io.write("What are you going to do about it. ")
firstquest_input = io.read()

end
if fourquest_input == "2" then
elseif fourquest_input == "two" then
print("Great!")
--Code for Survival Book
print("Almost ready for survival for your life!")
print("You have a book that teaches you about the art of survival it says this.")
print("The art of survival is like martial arts except you can trust no one.")
--Code for The First Zombie
print("Oh no! A Zombie is coming at you!")
io.write("What are you going to do about it. ")
secondquest_input = io.read()
end
if fourquest_input == "three" then
elseif fourquest_input == "3" then
print("Great!")
--Code for Survival Book
print("Almost ready for survival for your life!")
print("You have a book that teaches you about the art of survival it says this.")
print("The art of survival is like martial arts except you can trust no one.")
--Code for The First Zombie
print("Oh no! A Zombie is coming at you!")
io.write("What are you going to do about it. ")
thirdquest_input = io.read()
end
if fourquest_input == "four" then
elseif fourquest_input == "4" then
print("Great!")
--Code for Survival Book
print("Almost ready for survival for your life!")
print("You have a book that teaches you about the art of survival it says this.")
print("The art of survival is like martial arts except you can trust no one.")
io.write("Oh! No! You see a zombie 20 feet away from you what weapon are you going to use")
fourthquest_input = io.read()
end

if firstquest_input == "Cocktail Molotov" then
print("You threw the Molotov at the zombie and it did not die")
print("Someone is starting to help you by shooting the zombie")
io.write("Do you want to shoot to kill or want see what he wants ")
seewhoitis_input = io.read()
end

--shoot to kill
if seewhoitis_input == "shoot to kill" then
print("He is shooting at you so he is an enemy.")
print("Enemy - ")
end
--see what he wants
if seewhoitis_input == "see what he wants" then
print("His name is Billy Merry")
print("Billy wants you to get something for him")
print("Do you want to help Billy")
io.write = "shoot to kill or help Billy"
helpbilly_input = io.read()

end
if helpbilly_input == "shoot to kill" then
print("Billy is shooting at you and he has made you his enemy.")
print("He is about to kill you ")
end
if helpbilly_input == "help Billy" then
print"Billy wants you to go get an M4A1 for him"
io.write = ("Do you want to leave and do nothing or help him?")
BillyM4A1_input = io.read()
end
if BillyM4A1_input == "help him" then
print("Have a nice trip going to get the M4A1")
end
if secondquest_input == "Cocktail Molotov" then
print("You threw the Molotov at the zombie and it did not die")
print("It is about to die you have no more Molotovs ")
end
if thirdquest_input == "Cocktail Molotov" then
end
if fourthquest_input == "Cocktail Molotov" then
print("You threw the Molotov at the zombie and it died by fire")
end

print("You found a building looks abandoned lets take a look, OK")
io.write("Do you want to take a look at the building? Yes/No ")
lookatbuilding_input = io.read()

if lookatbuilding_input == "Yes" then
elseif lookatbuilding_input == "yes" then
elseif lookatbuilding_input == "YES" then
elseif lookatbuilding_input == "yea" then
elseif lookatbuilding_input == "Yea" then
elseif lookatbuilding_input == "YEA" then

print("Great!")
print("When you went into the building you found an M4A1!")
end

io.write("Do you want to explore the building some more or just leave? ")
exploreorleave_input = io.read()

if exploreorleave_input == "some more" then
print("you found nothing")
elseif exploreorleave_input == "just leave" then
print("Now you are leaving and hear an enemy")
end

io.write("What are you going to do? ")
exploreorleave_input = io.read()


if lookatbuilding_input == "No" then
if lookatbuilding_input == "no" then
if lookatbuilding_input == "NO" then
if lookatbuilding_input == "na" then
if lookatbuilding_input == "Na" then
if lookatbuilding_input == "NA" then
print("Ok, But you are going to miss a chance for an M4A1")
end
end
end
end
end
end
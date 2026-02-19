# this is an example game 
# - showing iteration
# - decisions
# - variables

import time
print('Welcome to my game!')
score = 0
room = 1
while room != 6:
  print ("you are in room " + str(room)) # testing the game room
  if room == 1:
    time.sleep(1)
    print('You are in a room, you can move forwards(F) or right(R)')
    move=input("Which way do you want to go? (F/R)").upper() #convert to capital letters
    
    # check I've type valid input.
    while not (move == "F" or move == "R"):
      print("Sorry, but you can't do that")
      time.sleep(1)
      move=input("Which way do you want to go? (F/R)").upper()
    else:
      time.sleep(1)
      if move == "R":
        room = 2
        print('You have reached a dead end.')
      elif move == "F":
        room = 3
        print('You can see some money.')
        pickup = input("Do you want to pick it up (Y/N)").upper()
        if pickup == "Y":
          score += 10 # score = score+10
          print("Your score is "+str(score))
    
          
      
  time.sleep(1)
  if room == 2:
    print('You are in a room with a dead end, you can only go back (B)')
    move=input("Which way do you want to go? (B)").upper() #convert to capital letters
    
    # check I've type valid input.
    while not (move == "B"):
      print("Sorry, but you can't do that")
      time.sleep(1)
      move=input("Which way do you want to go? (B)").upper()
    else:
      time.sleep(1)
      if move == "B":
        room = 1
        print('You are back where you started.')
  elif room == 3:    
    print('You are in a room with a three exits, you can go back (B), left (L) or right (R)')
    move=input("Which way do you want to go? (B/L/R)").upper() #convert to capital letters
    
    # check I've type valid input.
    while not (move == "B" or move == "L" or move == "R"):
      print("Sorry, but you can't do that")
      time.sleep(1)
      move=input("Which way do you want to go? (B/L/R)").upper()
    else:
      time.sleep(1)
      if move == "B":
        room = 1
        print('You are back where you started.')
      elif move == "L":
        room = 5
        print ("You are in the kitchen - there is no food")
      elif move == "R":
        room = 4
        print ("You've hit another dead end... there is a horrible smell in here!")
        
        
        
      


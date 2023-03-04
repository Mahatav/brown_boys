import os

def writeSignUpDataToFile(data):
     un = data["username"]
     if os.path.exists(f'Users/[un].txt'):
          with open(f'Users/{un}.txt', "w") as f:
               for key, value in data.items(): 
                    f.write(f'{key}:{value}\n')
     else:
          with open(f'Users/{un}.txt', "x") as f:
               for key, value in data.items(): 
                    f.write(f'{key}:{value}\n')

def processLogin(un, pw):
     path = f'Users/{un}.txt'
     if os.path.exists(path):
          print('yay')
          with open(path, 'r') as f:
               data = f.readlines()
               for line in data:
                    if 'password' in line:
                         pwOnHand = line.split(":")[1].strip("\n")
                         print(pwOnHand)
                         if pw == pwOnHand:
                              print("nice")
                              return True
     print('nay')
     return False
               

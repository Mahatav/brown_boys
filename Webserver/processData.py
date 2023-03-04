import os

def writeDataToFile(data):
    if not os.path.exists("users.txt"):
         with open("users.txt", "x") as f:
              for key, value in data.items(): 
                f.write(f'{key}:{value} ')
    else:
         with open("users.txt", "w") as f:
              for key, value in data.items(): 
                f.write(f'{key}:{value} ')
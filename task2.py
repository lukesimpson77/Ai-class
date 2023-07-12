i = 0
while i < 1:

    choice = input("type '1' for hours to mins or type '2' for mins to hours: ")

    if int(choice) == 1:
        i += 1
        hours = int(input("How many hours? "))
        mins = hours * 60
        print(str(mins) + " minutes")

    elif int(choice) == 2:
        i += 1
        mins = int(input("How many minutes? "))
        hours = mins / 60
        print(str(hours) + " hours")
    
    else:
        print("Please type '1' or '2' ")
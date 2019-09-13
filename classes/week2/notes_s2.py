# Conditionals: operations that evaluate a condition rather than perform a math function

12 > 3
12 < 3
12 <= 13
12 <= 12
12 == 13
12 == 12
12 != 13


# Inclusion: test to see if a scalar value appears somewhere in a more complex one
nums = [20, 25, 30, 35, 40]
25 in nums
27 in nums
"Frank" in nums
None in nums


# Indexing: lists allow access to any element by its location in the list --------------------------
data = [103, 17, 44, 11, 14]
data
data[1]
data[4]
data[-4]
data[1:3]
data[:3]
data[:-2]
data[3:1]


# Indexing Dicts
frank = {
    "name": "Frank Evans",
    "age": 36,
    "is_good_looking": True
}

frank[0]
frank["name"]
frank["is_good_looking"]
frank["address"]

"name" in frank
"address" in frank
"Name" in frank
"Frank Evans" in frank


# Control Flow: making decisions on what code to run by evaluating a conditional -------------------

num_cups = 20
num_cups = num_cups + 5
print(num_cups)

num_cups += 5
print(num_cups)


if (num_cups > 10):
    print("I have a lot of cups")


if (num_cups > 50):
    print("I have a lot of cups")
else:
    print("I have just a few cups")


if (num_cups > 50):
    print("I have a lot of cups")
elif (num_cups > 10):
    print("I have several cups")
else:
    print("I have just a few cups")


# Whatever is the condition will be evaluated on its own into a True/False boolean first
num_cups = 23
cup_capacity = 6
amt_coffee = 95

enough_cups = (num_cups * cup_capacity) >= amt_coffee

if enough_cups:
    print("Coffee Time")
else:
    print("Time for a run to the store")


# Looping: running some code multiple times based on either a conditional or a setting -------------

# For Loop: run code a set number of times
data = [103, 17, 44, 11, 14]
for i in data:
    print(i)


for i in range(8):
    print(i)


# While Loop: run some code as many times as it takes for a condition to be False
things = 9
while (things > 3):
    print(things)
    things = things - 1


# Infinite loop: a loop that will never hit its end that thus runs forever
things = 9
while (things > 3):
    print(things)
    things = things + 1

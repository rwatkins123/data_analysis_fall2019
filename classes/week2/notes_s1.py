# Comments: any line that begins with the Hash/Pound sign will be ignored by the interpreter, it is
# used as a way to keep notes right next to your code for both you and other people to read.
# Comment notes will be used here to help explain basic outlines of what we are doing and for future
# homework assignments.


# Data Types ---------------------------------------------------------------------------------------

# Integer: whole numbers
23
type(23)


# Float: numbers with decimals, which can encompass whole numbers as well.
3.99
type(3.99)

2.0
type(2.0)


# String: a collection of letters and other alpha-numeric characters that make up words.
"Hello"
type("Hello")

"123 Fake Str."
"Good Morning, my name is HAL. Are you Dave?"
"@"


# Boolean: true/false values, can only have these two states
True
False
type(True)


# None: a special data type that serves as a placeholder for the absence of a value
None
type(None)


# Variable Binding ---------------------------------------------------------------------------------

# Bind: attach a value to named part of your memory space
age = 25
name = "Frank"
male = True
num_ferraris = None

# Rebind: you can always overwrite a given value by binding a new one to it.
age = 35
age = "Orange"  # a rebind can even change the data type, so make sure it makes sense


# Collection Types ---------------------------------------------------------------------------------

# List/Array: an ordered group of things
[1, 2, 3, 4, 5]
["Hello", "World", "my", "name", "is", "Jimmy"]
[True, False, None, True]
["Hello", 17, True, None]


# Once any value is bound to a variable, we can use that variable in its place for anything.
words = ["Hello", "World", "my", "name", "is", "Jimmy"]
type(words)
len(words)
sorted(words)


nums = [103.5, 23.2, 17, 59.9, 43, 20, 20, 46, 39, 20, 77.34]
sum(nums)
max(nums)
min(nums)


# Dictionary: list a list, but where each element has a label instead of a position
{"name": "Frank"}
["Frank", 36, True]  # instad of a list where we have to remember the labels...
{"name": "Frank", "age": 36, "is_good_looking": True}
type({"name": "Frank"})


# it is common to space dicts where keys and values are on new lines
{
    "name": "Frank",
    "age": 36,
    "is_good_looking": True
}

# Dicts can even store complex data types as values, this concept is called "self describing"
{
    "name": "Frank",
    "age": 36,
    "is_good_looking": True,
    "hobbies": ["skiing", "guitar", "modeling"],
    "address": {
        "street": "123 Fake St.",
        "city": "OKC",
        "state": "OK",
        "is_PO_box": False
    }
}


# this can go the other way too, where a list can store other complex objects as elements
[
    {"name": "Frank", "age": 36},
    {"name": "Jim", "age": 41},
    {"name": "Mary", "age": 11},
]


# More Info ----------------------------------------------------------------------------------------

# Intro to Computer Science & Programming (MIT)
# https://www.edx.org/course/6-00-1x-introduction-to-computer-science-and-programming-using-python-3

# I think this is a fantastic class. When I first started learning programming, a much earlier
# version of this class was where I started. It is difficult but very, very good.

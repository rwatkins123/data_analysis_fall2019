# Functions: some code that you can put a wrapper around to use elsewhere --------------------------

nums = [20, 25, 30, 35, 40]


# calc the sum using a loop
total = 0
for i in nums:
    total += i
    print(total)

print(total)

# This function does the same thing
sum(nums)


def sum_okc(elements):
    total = 0
    for i in nums:
        total += i

    return total


sum_okc(nums)


# We can use functions inside of other functions to build new functionality

def average_squared(elements):
    n_elements = len(elements)
    sum_elements = sum_okc(elements)
    avg = sum_elements / n_elements
    avg_sq = avg * avg
    return avg_sq


nums = [20, 25, 30, 35, 40]
average_squared(nums)

average_squared([23, -2, 17, 101])


# Update function to take arbitrary exponents
def average_power(elements, power):
    n_elements = len(elements)
    sum_elements = sum_okc(elements)
    avg = sum_elements / n_elements
    output = avg ** power
    return output


nums = [20, 25, 30, 35, 40]
average_power(nums, 2)
average_power(nums, 4)

average_power([23, -2, 17, 101], 6)

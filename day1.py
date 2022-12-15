from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
from robot.libraries.BuiltIn import _Misc



@keyword('Day1')
def day_1(list):
    
    list_sums_elves = list_sums(list)
    
    biggest = 0
    for x in list_sums_elves:
        if x > biggest:
            biggest = x

    return biggest
    
@keyword('Day1_two')
def day_1_two(list):
    list_sums_elves = list_sums(list)
    list_sums_elves.sort()
    biggest_three = []
    for i in range(3):
        biggest = list_sums_elves.pop()
        biggest_three.append(biggest)
    
    sum_of_biggest = 0
    for x in biggest_three:
        sum_of_biggest += x

    return sum_of_biggest


def list_sums(list):
    list_elf_calories = [sub_list(x) for x in list]
    sums = [sum(x) for x in list_elf_calories]
    return sums

def sub_list(string):
    list = string.split("\n")
    list2 = [int(x) for x in list if x != '']
    return list2

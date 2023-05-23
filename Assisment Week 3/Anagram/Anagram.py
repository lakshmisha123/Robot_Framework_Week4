
First_String=str(input("Enter the first string: "))
Second_String=str(input("Enter the Second string:"))

Sorted_First_String=sorted(First_String.lower())
Sorted_Second_String=sorted(Second_String.lower())

print("String 1 after sorting: ", Sorted_First_String)
print("String 2 after sorting: ", Sorted_Second_String)

def isAnagram():
    if(Sorted_First_String == Sorted_Second_String):
        return "The strings are anagrams."
    else:
        return "The strings are not anagrams."

print(isAnagram())

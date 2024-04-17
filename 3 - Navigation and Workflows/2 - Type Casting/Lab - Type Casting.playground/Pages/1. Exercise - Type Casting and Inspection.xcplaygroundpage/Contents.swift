/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var myCollection: [Any] = ["Fruits", 10, 3.54, true]
print(myCollection)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for element in myCollection{
    if element is Int{
        print("The integer has a value of \(element)")
    }else if element is Double{
        print("The double has a value of \(element)")
    }else if element is String{
        print("The string is \(element)")
    }else if element is Bool{
        print("\(element)")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var myDictionary: [String: Any] = ["UserName":"60Ciu", "Age": 20, "Height": 5.50, "Student": true]
print(myDictionary)
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0
for (_, element) in myDictionary{
    if let number = element as? Double{
        total += number
    }else if let number = element as? Int{
        total += Double(number)
    }else if let number = element as? String{
        total += 1
    }else if let number = element as? Bool{
        if number{
            total += 2
        }else{
            total -= 3
        }
    }
}
print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0
for (_, element) in myDictionary{
    if let number = element as? Double{
        total2 += number
    }else if let number = element as? Int{
        total2 += Double(number)
    }else if let number = element as? String{
        if let num = Int(number){
            total2 += Double(num)
        }
    }
}
print(total2)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */

import UIKit

// MARK: - Map

//The Swift standard library implements the common CS function "map".  Implement map using generics.  In comments tell us why using generics is "better" than using explicit types

func makespaceMap<A, B>(xs: [A], f: A -> B) -> [B] {
    
    var mappedArray = [B]()
    
    for baseObject in xs {
         mappedArray.append(f(baseObject))
    }
    
    return mappedArray
}

//  In short, generics are "better" than explicit types for creating the map function because they allow us to write a single function to cover many situations. If we were to use explicit types, we would have to build a map function for each type we wish to be able to map! Instead, we are able to specify certain restrictions on the types that may go into a generic function (of which none have been specified in the map example above). However, for clarity, these could be requirements that inputs be subclasses of a specified class, or that they implement a specified protocol.


makespaceMap([1,2,3,4,5]) { x in x * 2 } //([2,4,6,8,10])

// MARK: - Iterative Reduce

//The Swift standard library also has an implementation for the "reduce" function.  Reimplement reduce using iteration.

func reduceIteratively <A, R>(xs: [A], initialValue: R, combine: (R, A) -> R) -> R {

    var reducedValue = initialValue
    
    for itemToCombine in xs {
        reducedValue = combine(reducedValue,itemToCombine)
    }
        
    return reducedValue
}

// NB: I stayed away from redefining the function itself with a "var" initialValue, but that is a viable alternative to reduce lines of code if a preferred style at MakeSpace.

reduceIteratively([1,2,3,4], 0, +) //(10)

// MARK: - Recursive Reduce 

//Implement reduce recursively.  You are not allowed to use any loops or iterators in this implementation.

func reduceRecursively <A, R>(xs: [A], initialValue: R, combine:(R, A) -> R) -> R {
    
    var mutableXs = xs;
    
    var currentCombineValue = initialValue;

    if var lastX = mutableXs.last {
        currentCombineValue = combine(initialValue, lastX);
        mutableXs.removeLast();
        return reduceRecursively(mutableXs, currentCombineValue, combine);
    }
    
    return currentCombineValue;
}

reduceRecursively([1, 2, 3, 4], 0, +) //(10)

// MARK: - FizzBuzz Swift

//Implement the classic fizzbuzz problem.  Your function takes in a start integer and an end integer.  Your function should return an array with integers replaced with Fizz if they are divisible by 3, Buzz if they are divisible by FizzBuzz if they are divisible by 3 and 5. Otherwise the integer should be returned.

func fizzBuzz(start: Int, end: Int) -> [Any]{
    
    var fizzBuzzArray = [Any]();
    
    for (var currentInt = start; currentInt <= end; currentInt++) {

        let divisibleBy3 : Bool = (currentInt % 3 == 0) ? true : false
        let divisibleBy5 : Bool = (currentInt % 5 == 0) ? true : false
        
        switch (currentInt) {
            
        case _ where divisibleBy3 && divisibleBy5:
            fizzBuzzArray.append("FizzBuzz")
            
        case _ where divisibleBy3:
            fizzBuzzArray.append("Fizz")
            
        case _ where divisibleBy5:
            fizzBuzzArray.append("Buzz")
            
        default:
            fizzBuzzArray.append(currentInt)
            
        }
    }
    
    return fizzBuzzArray;

}

fizzBuzz(1, 15) //([1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz])

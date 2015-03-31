import UIKit

// MARK: - Map

//The Swift standard library implements the common CS function "map".  Implement map using generics.  In comments tell us why using generics is "better" than using explicit types

func makespaceMap<A, B>(xs: [A], f: A -> B) -> [B] {
}

makespaceMap([1,2,3,4,5]) { x in x * 2 } //([2,4,6,8,10])

// MARK: - Iterative Reduce

//The Swift standard library also has an implementation for the "reduce" function.  Reimplement reduce using iteration.

func reduceIteratively <A, R>(xs: [A], initialValue: R, combine: (R, A) -> R) -> R {
}

reduceIteratively([1,2,3,4], 0, +) //(10)

// MARK: - Recursive Reduce 

//Implement reduce recursively.  You are not allowed to use any loops or iterators in this implementation.

func reduceRecursively <A, R>(xs: [A], initialValue: R, combine:(R, A) -> R) -> R {
}

reduceRecursively([1, 2, 3, 4], 0, +) //(10)

// MARK: - FizzBuzz Swift

//Implement the classic fizzbuzz problem.  Your function takes in a start integer and an end integer.  Your function should return an array with integers replaced with Fizz if they are divisible by 3, Buzz if they are divisible by FizzBuzz if they are divisible by 3 and 5. Otherwise the integer should be returned.

func fizzBuzz(start: Int, end: Int) -> [Any]{
}

fizzBuzz(1, 15) //([1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz])


//
//  main.swift
//  quadratic-solver
//
//  Created by Russell Gordon on 2016-04-12.
//  Copyright © 2016 Royal St. George's College. All rights reserved.
//

import Foundation

// Use this to track whether correct input has been given
var validInput : Bool = false

// Create the "good" variable to use later
var a : Double = 0

// Keep looping as long as the user has given us bad input
while (validInput == false) {
    
    // Get the a value
    print("a?")
    // Ask for the value
    if let input = readLine(stripNewline: true) {
        
        // We have been given non-nil input (we have *something to
        // work with)
        // Is it valid? Can we convert this value in a variable with
        // a data type of Double?
        if let inputAsDouble = Double(input) {
            // This works, we have a double
            a = inputAsDouble // save the good value to use later
            // Make sure the loop asking for input stops
            validInput = true
        }
    }
    
}

// Get the "b" value
// Create the "good" variable to use later
var b : Double = 0

// Reset the validInput boolean to say that we have bad input
validInput = false

// Keep looping as long as the user has given us bad input
while (validInput == false) {
    
    // Get the b value
    print("b?")
    // Ask for the value
    if let input = readLine(stripNewline: true) {
        
        // We have been given non-nil input (we have *something to
        // work with)
        // Is it valid? Can we convert this value in a variable with
        // a data type of Double?
        if let inputAsDouble = Double(input) {
            // This works, we have a double
            b = inputAsDouble // save the good value to use later
            // Make sure the loop asking for input stops
            validInput = true
        }
    }
    
}

// Get the "c" value
// Create the "good" variable to use later
var c : Double = 0

// Reset the validInput boolean to say that we have bad input
validInput = false

// Keep looping as long as the user has given us bad input
while (validInput == false) {
    
    // Get the c value
    print("c?")
    // Ask for the value
    if let input = readLine(stripNewline: true) {
        
        // We have been given non-nil input (we have *something to
        // work with)
        // Is it valid? Can we convert this value in a variable with
        // a data type of Double?
        if let inputAsDouble = Double(input) {
            // This works, we have a double
            c = inputAsDouble // save the good value to use later
            // Make sure the loop asking for input stops
            validInput = true
        }
    }
    
}

// Find the roots using the Quadratic Formula

// First, see if the discriminant (the part under the radical sign) is negative or positive
// When it's negative, there are no real roots and we can stop
var discriminant : Double = b*b - 4 * a * c

// Check for a negative discriminant
if (discriminant < 0) {
    print("There are no roots.")
} else {
    
    // Keep going and get the roots
    var root1 : Double = sqrt(discriminant)
    var root2 : Double = -1 * sqrt(discriminant)
    
    // Evaluate the "-b" part
    root1 = -1 * b + root1
    root2 = -1 * b + root2
    
    // Evaluate the division by 2a
    root1 = root1 / (2 * a)
    root2 = root2 / (2 * a)
    
    // Print the output
    if (discriminant == 0) {
        print("There are two equal roots of \(root1)")
    } else {
        print("The roots are \(root1) and \(root2)")
    }
}











import Foundation
import Glibc
//
//  Einstein.swift
//
//  Created by Alex De Meo
//  Created on 2023/02/11
//  Version 1.0
//  Copyright (c) 2023 Alex De Meo. All rights reserved.
//
//  This program calculates the Energy released when mass.
// is converted to energy

// creating constants and variables

// Getting the width and turning it to a double
print("Enter the width in inches: ", terminator: "")
if let widthDbl = Double(readLine()!) {
    // Making sure the double is positive
    if (widthDbl > 0) {
        // getting the height and making sure its a positive number
        print("Enter the height in inches: ", terminator: "")
        if let heightDbl = Double(readLine()!) {
            if (heightDbl > 0) {
                // Calling the function that will calculate the length and
                // storing the returned value in the variable
                let lengthDbl = calcBDFT(height: heightDbl, width: widthDbl)
                // Outputting the length to the user
                print(String(format: "The length is %.2fin", lengthDbl))
            } else {
                print("Input cannot be negative!")
            }
        } else {
            print("That input is invalid!")
        }
    } else {
        print("Input cannot be negative!")
    }
} else {
    print("That input is invalid!")
}

// This function will be called to calculate the length
func calcBDFT(height: Double, width: Double) -> Double {
    // This is the board foot volume constant
    let BDFT = 144.0;
    // This is the calculations used to calculate the length
    let length = BDFT / (height * width)
    // Returning the length back to where it this function was called
    return length
}
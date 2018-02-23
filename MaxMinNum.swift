//
//  MaxMinNum.swift
//  Program that generates 10 random numbers between 1 and 99 and returns them.
//	it also shows the min and max numbers
//
//  Created by Heejo Suh in Feb 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//
//swiftc MaxMinNum.swift



import Foundation


//-------------------
var numbers : [Int] = []

srand(UInt32(time(nil))) //need this to mix up and actually get random numbers!
//only need it once

for _ in 1...10 {
	//get random numbers
	let randNumber=Int(random()%(99) + 1)
	//random number between 99 and 1
 	numbers.append(randNumber) //append to array
 }
 
 
func min(inputArray: [Int]) -> Int {
	//minimum
	//set to the first then use for function to change it to suitable numbers
	var minimum: Int = inputArray[0]
	for number in inputArray {
		if number<minimum {
			minimum = number
		}
	}
	return minimum
}


func max(inputArray: [Int]) -> Int {
	//maximum
	//set to the first then use for function to change it to suitable numbers
	var maximum: Int = inputArray[0]
	for number in inputArray {
		if number>maximum {
			maximum = number
		}
	}
	return maximum
}


print("Array generated:\n\(numbers)")
print("The minimum number generated was \(min(inputArray: numbers)).")
print("The maximum number generated was \(max(inputArray: numbers)).")
    
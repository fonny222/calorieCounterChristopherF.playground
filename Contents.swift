//: Playground - noun: a place where people can play

import UIKit

// calorie calculator application
// this will calculate the calories you burned based on the information you input. 

//variables
//I had to change them all to a Float Xcode was having inference problems


// for female change male to false
var male:Bool = true;



//Enter the following numbers to calculate calories burned
//***************************************
var age:Float = 49;

// weight pounds
var weight:Float = 155;

//beats per minute
var heartRate:Float = 148;

// minutes of exercise
var time:Float = 60;
//**************************************



var caloriesBurned:Float = 0;

//These next few variables were added because the compiler (xcode) would not allow
// me to do one large calculation and instead had me break it apart into several

var ageWeight:Float = 0;
var heartNumber:Float = 0;


//Constants

//Male
let ageCalcM:Float = 0.2017;
let weightCalcM:Float = 0.09036;
let heartCalcM:Float = 0.6309;
let timeCalcM:Float = 4.184;

//Female
let ageCalcF:Float = 0.074;
let weightCalcF:Float = 0.05741;
let heartCalcF:Float = 0.4472;
let timeCalcF:Float = 4.184;


//Calculations

// I kept getting an error saying the calculations I commented out below was too complicated and taking too long to process
// I had to break apart the calculations instead of being one complex problem to several smaller ones so swift/xcode would 
// do the calculations properly.

if(male == true)
{
// caloriesBurned = (((age * ageCalcM) - (weight * weightCalcM) +  (heartRate * heartCalcM) - 55.0969) * (time / timeCalcM))
   
    ageWeight = ((age * ageCalcM) - (weight * weightCalcM))
    
    heartNumber = (ageWeight + (heartRate * heartCalcM) - 55.0969)
    
    caloriesBurned = (heartNumber * (time / timeCalcM))
    
    
    print ("You burned ", caloriesBurned, " calories during this workout!")
}else
{
//caloriesBurned = (((age * ageCalcF) - (weight * weightCalcF) + (heartRate * heartCalcF) - 20.4022) * (time / timeCalcF))
  
    ageWeight = ((age * ageCalcF) - (weight * weightCalcF))
    
    heartNumber = (ageWeight + (heartRate * heartCalcF) - 20.4022)
    
    caloriesBurned = (heartNumber * (time / timeCalcF))
    
    print("You burned ", caloriesBurned, " calories during this workout!")
}
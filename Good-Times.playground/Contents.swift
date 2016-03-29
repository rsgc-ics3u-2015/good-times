// Russell Gordon
//
// "Good Times"

/*
 
 I need to get the time in other cities across Canada.
 
 Input time is in Ottawa.
 
 I've noticed that Victoria is always 3 hours behind Ottawa.
 
 Begin by... making the program work perfectly, just for Victoria.
 
 */

// Test cases
//
//let input : Int = 1300    // Simple case
let input : Int = 0       // Midnight
//let input : Int = 2359    // A minute before midnight
//let input : Int = 59      // 00:59 AM
//let input : Int = 2330      // 11:30 PM
//let input : Int = 2300      // 11:00 PM

// Inputs
let ottawaTime : Int = input

// Process

// shift
// Purpose: Shifts the provided time by the amount indicated.
//
// Parameters:  timeBy      Int     The time to be shifted.
//              howMuch     Int     How much to shift the provided time by.
//
// Returns:                 Int     The shifted time.
//
func shift(timeBy: Int, howMuch: Int) -> Int {
    
    var shiftedTime : Int = timeBy + howMuch
    
    // Handle cases with negative time (times in the day before)
    if shiftedTime < 0 {
        shiftedTime = 2400 + shiftedTime
    }
    
    // Handle cases with time in next day
    if shiftedTime > 2359 {
        shiftedTime = shiftedTime - 2400
    }
    
    // Return the shifted time value for this city
    return shiftedTime
    
}

// Process Victoria
var victoriaTime : Int = shift(ottawaTime, howMuch: -300)

// Process Edmonton
var edmontonTime : Int = shift(ottawaTime, howMuch: -200)

// Process Winnipeg
var winnipegTime : Int = shift(ottawaTime, howMuch: -100)

// Process Halifax
var halifaxTime : Int = shift(ottawaTime, howMuch: 100)

// Process St. John's
var stJohnsTime : Int = shift(ottawaTime, howMuch: 130)
// Handle cases where time value goes past 59 minutes
// e.g.: Ottawa time is 0059, 00:59 AM
//       Then St. John's time is 2:29 AM and shown as 0189 but should be 0229
if (stJohnsTime % 100 >= 60) {
    var properHours = stJohnsTime / 100 * 100
    var extraMinutes = stJohnsTime % 100
    var shortHours = extraMinutes / 60 * 100
    var danglingMinutes = extraMinutes % 60
    var fixedTime = properHours + shortHours + danglingMinutes
    stJohnsTime = fixedTime
}

// Outputs
print("\(ottawaTime) in Ottawa")
print("\(victoriaTime) in Victoria")
print("\(edmontonTime) in Edmonton")
print("\(winnipegTime) in Winnipeg")
print("\(ottawaTime) in Toronto") // Toronto always the same as Ottawa
print("\(halifaxTime) in Halifax")
print("\(stJohnsTime) in St. John's")

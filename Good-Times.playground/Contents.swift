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
//let input : Int = 0       // Midnight
//let input : Int = 2359       // A minute before midnight
let input : Int = 59       // 00:59 AM

// Inputs
let ottawaTime : Int = input

// Process

// Victoria
var victoriaTime : Int = ottawaTime - 300
// Handle cases with negative time (times in the day before)
if victoriaTime < 0 {
    victoriaTime = 2400 + victoriaTime
}

// St. John's
var stJohnsTime : Int = ottawaTime + 130
// Handle cases with negative time (times in the day before)
if stJohnsTime < 0 {
    stJohnsTime = 2400 + stJohnsTime
}
// Handle cases with time in next day
if stJohnsTime > 2359 {
    stJohnsTime = stJohnsTime - 2400
}
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
print("\(stJohnsTime) in St. John's")

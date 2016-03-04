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
let input : Int = 2359       // A minute before midnight

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


// Outputs
print("\(ottawaTime) in Ottawa")
print("\(victoriaTime) in Victoria")
print("\(stJohnsTime) in St. John's")

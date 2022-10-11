
// Add your code below:

import Foundation
import Swift

var randomWords : [String] = []

// Read the contents of the specified file
do {
    //This do-catch program puts a txt file into an array and seperates it into multiple values
    let data = try String(contentsOfFile:"random-10e4b.txt", encoding: String.Encoding.utf8)
    randomWords = data.components(separatedBy: "\n")
    randomWords.removeLast()
} catch let err as NSError {
    // do something with Error
    print(err)

}
var newArray = randomWords

// print("Pass: \(passCount), Swaps: \(swapCount)/\(totalSwapCount), Array: \(newArray)")
for x in 1..<newArray.count {
    var y = x
    while y > 0 && newArray[y] < newArray[y - 1] {
        newArray.swapAt(y-1,y)
        y -= 1
        
    }
    
       // print("Pass: \(passCount), Swaps: \(swapCount)/\(totalSwapCount), Array: \(newArray)")
    
}

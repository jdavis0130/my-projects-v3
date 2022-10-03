import UIKit

var greeting = "Hello, playground"

var nums = [100, 68, 97, 70, 54]

let sumNums = nums.reduce(0) { (sum, num) -> Int in
    sum + num
}
print(sumNums)






// Functional programming: pass functions to other functions as arguments -> Higher order function
// through **closures**
import UIKit

let originalPrices = [2, 5, 6, 12, 5, 20]

func convertPrices(originalPrices: [Int], conversionClosure: (_ price: Int) -> Int) -> [Int] {
    var convertedPrices = [Int]()
    for originalPrice in originalPrices {
        let convertedPrice = conversionClosure(originalPrice)
        convertedPrices.append(convertedPrice)
    }
    
    return convertedPrices
}


convertPrices(originalPrices: originalPrices, conversionClosure: { $0 * 2 })




let paymentsArray = [99.54, 44.31, 89.0, 6.5, 21.24, 63.7, 59.1]
// filter w/ shorthand notation
let largePayments = paymentsArray.filter { $0 > 60 }
print(largePayments)
// map to string
let filteredPaymentsStrings = largePayments.map { String($0) }
print(filteredPaymentsStrings)
// reduce combined all values in array to object
let finalListString = filteredPaymentsStrings.reduce("") { $0 + "," + $1 }
print(finalListString)


// Compact map
let urlsAsStrings = ["https://www.google.com", "not a valid url"]
let urlsOrNil = urlsAsStrings.map { URL(string: $0) }
let urls = urlsAsStrings.compactMap { URL(string: $0) }


// MARK: - Use map, filter, reduce to calculate values
struct Order {
    let price: Int
    let location: String
}
 
func totalRevenueOf(orders: [Order],  location: String) -> Int {
    let ordersAtLocation = orders.filter { $0.location == location }    // Step 1: Filter the orders array
    // Step 2: Confirm that the filtered array contains the correct values
    print(ordersAtLocation)
    // Step 3: Convert filtered orders array to array of their prices **Swift can autocomplete***
    let orderPrices = ordersAtLocation.map { $0.price }
    print(orderPrices)
    // Step 5: Return the sum
    return orderPrices.reduce(0) { $0 + $1 }
}
 
let orders = [
    Order(price: 24, location: "New York"),
    Order(price: 37, location: "San Francisco"),
    Order(price: 101, location: "New York"),
]
 
let result = totalRevenueOf(orders: orders, location: "New York")
print(result)   // confirm correct result

// Sets store unordered list or values, where every value must be unique


// Step 1: Declare sets for each booking method
let reservationsInPerson: Set = ["000-345-3441", "000-345-3442"]
let reservationsOverPhone: Set = ["111-234-2332", "111-234-2333"]
let reservationsOverInternet: Set = ["222-456-4554", "222-456-4555"]

// Step 2: Combine all the sets into a single set
let inPersonAndOverPhone = reservationsInPerson.union(reservationsOverPhone)
print(inPersonAndOverPhone)

var allPhoneNumbers = inPersonAndOverPhone.union(reservationsOverInternet)
print(allPhoneNumbers)

// Step 3: Create a Set for the reservation codes
var confirmationCodes: Set = ["LL3450", "LL3451", "LL3456", "LLAP69"]
// Step 4: Compare the number of codes to the number of phone numbers
print("\(allPhoneNumbers.count) vs \(confirmationCodes.count)")

// Step 5: Insert more confirmation codes if it is less than phone numbers
confirmationCodes.insert("LL3455")
print(confirmationCodes)

// Step 6: Remove the confirmation code and phone number for canceled reservations
allPhoneNumbers.remove("111-234-2332")
confirmationCodes.remove("LL3451")

print("\(allPhoneNumbers.count) vs \(confirmationCodes.count)")



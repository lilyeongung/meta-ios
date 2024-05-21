// Type casting is a method of checking and ensuring an instance type
// is -> checks whether an instance is of a certain subclass type
// as -> downcastsxcuserdata/ an instance as a different type

class Customer {
    
}

class PeanutAllergyCustomer: Customer {
    let dishesToAvoid = [
        "Dish7",
        "Dish8"
    ]
    
    func executeEmergencyProcedure() {
        print("Call 911")
    }
}

var customers: [Customer] = []
for _ in 0..<5 {
    let randomNumber = Int.random(in: 0...1)
    let customer: Customer
    if randomNumber == 0 {
        customer = Customer()
    } else {
        customer = PeanutAllergyCustomer()
    }
    customers.append(customer)
}

for customer in customers {
    if customer is PeanutAllergyCustomer {  // typecast
        print("Welcome. Do note that some food has peanuts.")
    } else {
        print("Welcome.")
    }
    // To access the properties and methods of a peanut allergy customer we need to downcast it
    // Because I can't be sure that every customer coming through the door has peanut allergy. I need to down cast using the conditional operator as?
    if let peanutAllergyCustomer = customer as? PeanutAllergyCustomer {  // downcast with ? (can fail) and if let
        print("Dishes to avoid:")
        print(peanutAllergyCustomer.dishesToAvoid)
        print("Emergency Procedure:")
        print(peanutAllergyCustomer.executeEmergencyProcedure())
    }
}

// Delegation allows you to give control and pass responsibilities from one instance to another instance

// Step 1: Add the driver protocol and delivery driver class instance
protocol Driver {
    var name: String { get }
    func driveToDestination(_ destination: String, with food: String)
}

class DeliveryDriver: Driver {
    let name: String
    init(name: String) {
        self.name = name
    }
    func driveToDestination(_ destination: String, with food: String) {
        print("\(name) is driving to \(destination) to deliver \(food)")
    }
}


// Step 2: Create a Little Lemon class instance
class LittleLemon {
    // Step 3: Add a variable property
    var deliveryDriver: Driver?
    // Step 4: Define a food delivery method
    func deliverFood(_ food: String, to destination: String) {
        // Step 5: Unwrapping the delegate
        if let deliveryDriver = deliveryDriver {
            //  Step 6: Delegate the food delivery functionality
            deliveryDriver.driveToDestination(destination, with: food)
        } else {  //  Step 7: Handling the else statement
            print("No delivery driver.")
        }
    }
}


// Step 8: Instantiate a delivery driver
let bob = DeliveryDriver(name: "Bob")

// Step 9: Instantiate the Little Lemon restaurant
let littleLemon = LittleLemon()

// Step 10: Call the food delivery method
littleLemon.deliverFood("Super Spaghetti", to: "1 Spaghetti Lane")

// Step 11: Assign a delivery driver to Little Lemon
littleLemon.deliveryDriver = bob

littleLemon.deliverFood("Super Spaghetti", to: "1 Spaghetti Lane")


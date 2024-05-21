//  Step 1: Define a custom protocol
protocol Dish {
    var name: String { get }                // Step 2: Define protocol properties and methods requirements
    var preparationMinutes: Int { get set }
    func prepare()
    func plate(artisticLevel: Int)
}

// Step 3: Adopt and conform custom protocol in a class
class MainDish: Dish {
    let name: String
    var preparationMinutes: Int
    // memberwise initializer
    init(name: String, preparationMinutes: Int) {
        self.name = name
        self.preparationMinutes = preparationMinutes
    }
    func prepare() {
        print("Preparing \(name) for \(preparationMinutes) minutes.")
    }
    func plate(artisticLevel: Int) {
        print("Plating artistic level: \(artisticLevel).")
    }
    
}

// Step 4: Instantiate a MainDish class instance
let superSpaghetti = MainDish(name: "Super Spaghetti", preparationMinutes: 35)

// Step 5: Calling methods
superSpaghetti.prepare()
superSpaghetti.plate(artisticLevel: 10)

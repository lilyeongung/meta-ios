//: [Next](@next)
//: ### Enums - a group of related values that don’t change.

enum Dessert {
    
    case tiramisu(chefName: String?)
    case affogato
    case cannoli
}

let favoriteDessert =  Dessert.tiramisu(chefName: "Andrew")

switch favoriteDessert {
case .tiramisu(let chefName):
    let prefix: String
    if let chefName = chefName {
        prefix = "\(chefName)'s "
    } else {
        prefix = ""
    }
    print("\(prefix)Tiramisu is this week's favorite Dessert!")
case .affogato:
    print("Affogato is this week's favorite Dessert!")
case .cannoli:
    print("Cannoli is this week's favorite Dessert!")
}


// MARK: - Enums with raw values
enum PastaTypes: Int {
    case spaghetti = 8
    case penne = 10
    case ravioli = 11
    case rigatoni = 12
}


// MARK: - Accessing raw values
let cookingTime = PastaTypes.spaghetti.rawValue
print("Spaghetti will be perfectly cooked in \(cookingTime) minutes.")


// MARK: - Passing enum as a function argument
func cookingPerfectPasta(pasta: PastaTypes) {
    let cookingTime = pasta.rawValue
    print("\(pasta) will be perfectly cooked in \(cookingTime) minutes.")
}

cookingPerfectPasta(pasta: .rigatoni)


// MARK: - CaseIterable Protocol enables you to iterate over the cases in an enum -> .count
enum BreadTypes: Int, CaseIterable {
    case white
    case wholegrain
    case rye
    case sourdough
}

let totalCaseCount = BreadTypes.allCases.count
print(totalCaseCount)


// MARK: - Enums with associated values
// To assign an associated value to an enum, you don’t need to specify a data type to the enum. Instead, you specify the data type for a variable in each of the enum cases.
enum PastaTypesA {
    case spaghetti(cookingTime: Int)
    case penne(cookingTime: Int)
    case ravioli(cookingTime: Int)
    case rigatoni(cookingTime: Int)
}

var checkIfCooked = PastaTypesA.spaghetti(cookingTime: 8)

func checkIfCooked(for pasta: PastaTypesA) {
    switch pasta {
    case .spaghetti(let cookingTime):
        if cookingTime < 8 {
        print("Spaghetti is still not fully cooked...")
        } else {
            print("Spaghetti is cooked, take it out of the water!")
        }
        
    default: return
    }
}

checkIfCooked(for: .spaghetti(cookingTime: 9))


// MARK: - Using "where" statements to improve overall code readability
func checkIfCooked2(for pasta: PastaTypesA) {
    switch pasta {
    case .spaghetti(let cookingTime) where cookingTime >= 8:
        print("Spaghetti is cooked, take it out of the water!")
    default:
        print("Pasta is not cooked.")
    }
}

checkIfCooked2(for: .spaghetti(cookingTime: 7))


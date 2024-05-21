// Protocols are blueprints - set of rules, expectations
// Protocol syntax
protocol ProtocolIdentifier {
    var propertyIdentifier: Int { get set }  // Property requirements -> get - readable, set - writable
    func methodIdentifier(parameter: Int) -> Int  // Method requirements
}

protocol Employee {
    var name: String { get }
    var daysWorking: Int { get set }
    func executePrimaryduty()
    func danceToHappyBirthdaySong(lyrics: String)
}

// How to inherit multiple protocols in a class and extend existing class implementations using extensions.
protocol GoodChef {
    func cookGoodFood()
}

protocol GreatChef {
    func cookGreatFood()
}

protocol ExcellentChef {
    func cookExcellentFood()
}

class Person: GoodChef, GreatChef {
    func cookGoodFood() {
    }
    func cookGreatFood() {
    }
}

// To extend a class functionality, type extension followed by the class name.
extension Person: ExcellentChef {
    func cookExcellentFood() {
    }
}



protocol GoodFighter{
    func fightGood()
}
protocol GreatFighter {
    func fightGreat()
}
protocol ExcellentFighter {
    func fightExcellent()
}

// Here is an example of organizing protocol inheritance using extensions:
class Fighter {
}
extension Fighter: GoodFighter {
    func fightGood() {
    }
}
extension Fighter: GreatFighter {
    func fightGreat() {
    }
}
extension Fighter: ExcellentFighter {
    func fightExcellent() {
    }
}


// MARK: - Protocol inheriting other protocols
protocol BlackBeltFighter: GoodFighter, GreatFighter, ExcellentFighter {
    func fightBlackBelt()
}

class Prodigy: BlackBeltFighter {
    func fightGood() {
    }
    func fightGreat() {
    }
    func fightExcellent() {
    }
    func fightBlackBelt() {
    }
}


// MARK: - Implement required and optional protocol methods
import Foundation

@objc protocol ReservationDataSource {
    @objc optional func reserve(tables: Int) -> Int
    @objc optional var maxReservableTables: Int { get }
}

// how to incorporate the optional protocol requirements in a class
class ReservationWebsite: ReservationDataSource {
    func reserve(tables: Int) -> Int {
        if tables < 1 {
            return 0
        }
        return tables
    }
}

// implementation of an optional protocol property in a class
class ReservationAgent: ReservationDataSource {
    let maxReservableTables: Int = 2
}

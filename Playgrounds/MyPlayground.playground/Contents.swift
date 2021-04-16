
let name = "Ludovic"
//name = "Toto"

var age = 34
age = 35
age = 36
age = 37

var height = 1.83
height = Double(age)

var version: Float = 5.3
version = Float(height)

let a = 5.0
let b = 2
let c = a / Double(b)

let result = Double("5,5")


struct Odometer {
    var count: Int = 0

    mutating func reset() {
        count = 0
    }

    mutating func increment() {
        count += 1
    }

    func printMileage() {
        print(count)
    }
}

var odo1 = Odometer(count: 10)
odo1.printMileage()
odo1.increment()
odo1.printMileage()

let odo2 = Odometer()
odo2.printMileage()
//odo2.increment()
//odo2.reset()

class Vehicule {

    let numberOfWheels: Int

    init(numberOfWheels: Int) {
        self.numberOfWheels = numberOfWheels
    }

    func makeNoise() {

    }
}

class Bicycle: Vehicule {

    var hasBasket: Bool

    init(hasBasket: Bool) {
        self.hasBasket = hasBasket
        super.init(numberOfWheels: 2)
    }

    override func makeNoise() {
        print("Dring dring")
    }
}

// Functions

// Simple
func doSomething() {
    print("I do something")
}

doSomething()
doSomething()

// avec paramètres
func multiply(_ firstNumber: Int, by secondNumber: Int) {
    let result = firstNumber * secondNumber
    print(result)
}

multiply(5, by: 2)

var array = ["Toto"]
array.append("Titi")
array.remove(at: 0)
array.insert("Tata", at: 1)

func sayHi(to name: String = "You") {
    print("Hi, \(name)")
}

sayHi(to: "Ludovic")
sayHi()

print("A", "B", "C", separator: ":", terminator: "!")

// Retours

func add(_ firstNumber: Int, to secondNumber: Int) -> Int {
    firstNumber + secondNumber
}

let resultAdd = add(5, to: 5)

func substract(_ first: Int, to second: Int) -> (first: Int, second: Int, result: Int) {
    return (first, second, second - first)
}

// Tuple Int dimension 3
let resultSub = substract(5, to: 10)
resultSub.result

//func allSatisfy(predicate: (String) -> Bool)) -> Bool

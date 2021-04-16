
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

//MARK: - First task
let int: Int = 1
let minInt: Int = Int.min
var maxInt: Int = Int.max

var minUInt: UInt = UInt.min
var maxUInt: UInt = UInt.max

var minUInt8: UInt8 = UInt8.min
var maxUInt8: UInt8 = UInt8.max

var minInt8: Int8 = Int8.min
var maxInt8: Int8 = Int8.max

let floatNum: Float = 10.0

let doubleNum: Double = 10.0

let name: String = "Name"

let isBool: Bool = true

//MARK: - Task 2
typealias Product = (count: Int, name: String)

typealias ProductList = [Product]

var productList = [Product]()

for _ in 0...20 {
    let product: Product = (count: Int.random(in: 0...100), name: "Name")
    productList.append(product)
}

//MARK: Calculate
func calculateTo(operation: Character, firstNumber: Int, secondNumber: Int) -> Int? {
    switch operation {
    case "*" : return firstNumber * secondNumber
    case "/" : return firstNumber / secondNumber
    case "+" : return firstNumber + secondNumber
    case "-" : return firstNumber - secondNumber
    default: return nil
    }
}
let operations: Set<Character> = ["*", "/", "+", "-"]

func calculateStart() {
    print("Enter the operation (*, /, +, -):")
    guard  let operationInput = readLine(),
           let operation = operationInput.first,
           operations.contains(operation)
    else {
        print("Invalid operation input.")
        calculateStart()
        return
    }
    
    print("Enter the first number:")
    guard let firstNumberInput = readLine(), let firstNumber = Int(firstNumberInput) else {
        print("Invalid input for first number.")
        calculateStart()
        return
    }
    
    print("Enter the second number:")
    guard let secondNumberInput = readLine(), let secondNumber = Int(secondNumberInput) else {
        print("Invalid input for second number.")
        calculateStart()
        return
    }
    
    guard let result = calculateTo(operation: operation, firstNumber: firstNumber, secondNumber: secondNumber) else {
        print("Invalid operation.")
        calculateStart()
        return
    }
    print("\(firstNumberInput) \(operationInput) \(secondNumberInput) = \(result)")
}

calculateStart()

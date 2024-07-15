/*
MARK: - 1) Напишите переменные и константы всех базовых типов данных: int, UInt, float, double, string. У чисел вывести их минимальные и максимальные значения.
 */
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

/*
MARK: - 2) Создайте список товаров с различными характеристиками (количество, название). Используйте typealias.
*/
typealias Product = (count: Int, name: String)

typealias ProductList = [Product]

var productList = [Product]()

for _ in 0...20 {
    let product: Product = (count: Int.random(in: 0...100), name: "Name")
    productList.append(product)
}

/*
 MARK: - 3) Напишите различные выражения с приведением типа.
 */
let numInt: Int = 10
let numDouble: Double = Double(a)
print(numDouble)

let anyValue: Any = "Hello, Swift"

if let stringValue = anyValue as? String {
    print(stringValue)
} else {
    print("anyValue is not a String")
}

let intValue: Int = 100
let stringValue: String = String(intValue)
print(stringValue)

let doubleValue: Double = 45.67
let intValueFromDouble: Int = Int(doubleValue)
print(intValueFromDouble)

/*
MARK: - 4) Вычисления с операторами (умножение, деление, сложение, вычитание): создайте консольный калькулятор.
 */

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

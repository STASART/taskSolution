
//MARK: - 1) Создайте 10 разных Dictionary с разными типами данных. Один из них должен содержать все месяца года на русском. Второй на английском.


// 1. Словарь с месяцами на русском
let monthsInRussian: [Int: String] = [
    1: "Январь", 2: "Февраль", 3: "Март", 4: "Апрель",
    5: "Май", 6: "Июнь", 7: "Июль", 8: "Август",
    9: "Сентябрь", 10: "Октябрь", 11: "Ноябрь", 12: "Декабрь"
]

// 2. Словарь с месяцами на английском
let monthsInEnglish: [Int: String] = [
    1: "January", 2: "February", 3: "March", 4: "April",
    5: "May", 6: "June", 7: "July", 8: "August",
    9: "September", 10: "October", 11: "November", 12: "December"
]

// 3. Словарь с числовыми ключами и строковыми значениями
let numberToString: [Int: String] = [
    1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five"
]

// 4. Словарь с строковыми ключами и числовыми значениями
let stringToNumber: [String: Int] = [
    "One": 1, "Two": 2, "Three": 3, "Four": 4, "Five": 5
]

// 5. Словарь с ключами типа String и значениями типа Double
let itemPrices: [String: Double] = [
    "Milk": 1.99, "Bread": 2.49, "Eggs": 3.99
]

// 6. Словарь с ключами типа String и значениями типа Bool
let userAccess: [String: Bool] = [
    "Admin": true, "Editor": true, "Viewer": false
]

// 7. Словарь с ключами типа Int и значениями типа [String]
let classStudents: [Int: [String]] = [
    1: ["Alice", "Bob", "Charlie"],
    2: ["David", "Eve", "Frank"],
    3: ["Grace", "Heidi", "Ivan"]
]

// 8. Словарь с ключами типа String и значениями типа [Int]
let userScores: [String: [Int]] = [
    "Player1": [10, 20, 30],
    "Player2": [15, 25, 35],
    "Player3": [12, 22, 32]
]

// 9. Словарь с ключами типа String и значениями типа Dictionary
let employeeDetails: [String: [String: String]] = [
    "John": ["Position": "Manager", "Department": "Sales"],
    "Jane": ["Position": "Developer", "Department": "IT"]
]

// 10. Словарь с ключами типа Int и значениями типа Set
let uniqueNumbers: [Int: Set<Int>] = [
    1: [1, 2, 3, 4],
    2: [2, 3, 4, 5],
    3: [3, 4, 5, 6]
]

//MARK: - 2) Соберите все ключи и значения каждого Dictionary и распечатайте в консоль.
func printDictionary<K, V>(dictionary: [K: V]) {
    for (key, value) in dictionary {
        print("Key: \(key), Value: \(value)")
    }
}

// Печать всех словарей
print("Месяцы на русском:")
printDictionary(dictionary: monthsInRussian)
print("\nМесяцы на английском:")
printDictionary(dictionary: monthsInEnglish)
print("\nЧисло -> Строка:")
printDictionary(dictionary: numberToString)
print("\nСтрока -> Число:")
printDictionary(dictionary: stringToNumber)
print("\nЦены на товары:")
printDictionary(dictionary: itemPrices)
print("\nДоступ пользователей:")
printDictionary(dictionary: userAccess)
print("\nСтуденты в классах:")
printDictionary(dictionary: classStudents)
print("\nОчки пользователей:")
printDictionary(dictionary: userScores)
print("\nДетали сотрудников:")
printDictionary(dictionary: employeeDetails)
print("\nУникальные числа:")
printDictionary(dictionary: uniqueNumbers)


//MARK: - 3) Создайте пустой Dictionary и через условный оператор if проверьте, пустой он или нет. Если пустой, то в условии добавьте в него пар значений.

var testDictinonary: [Int: String] = [:]
if testDictinonary.isEmpty {
    testDictinonary[0] = "Zero"
    testDictinonary[1] = "One"
}

//MARK: - 4) Cоздайте словарь — ключ: «иномарка», «значение»: название машины. Добавьте в него значение по ключу - «отечественная». Распечатайте ключи и значения вконсоль. Затем отдельно только значения. Удалите из словаря иномарку по ключу (двумя способами: через nil и removeValue().
var cars: [String: String] = ["иномарка": "Mercedes"]
cars["отечественная"] = "Lada"

printDictionary(dictionary: cars)

for car in cars {
    print("Value: \(car.value)")
}

cars.removeValue(forKey: "иномарка")
cars["отечественная"] = nil

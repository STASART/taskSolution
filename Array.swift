//MARK: - 1) Создайте массив учеников из 12 мальчиков
class Student {
    let gender: String
    init(gender: String) {
        self.gender = gender
    }
}

final class Boy: Student {
    init() {
        super.init(gender: "Boy")
    }
}

final class Girl: Student {
    init() {
        super.init(gender: "Girl")
    }
}


var students: [Student] = .init(repeating: Boy(), count: 12)

/*
MARK: - 2) Добавьте 7 девочек: с помощью append и по определённому индексу: см. insert. Выведите результат в консоль.
*/

for _ in 0...3 {
    students.append(Girl())
}

for _ in 0...2 {
    students.insert(Girl(), at: students.count)
}

func printKids() {
    for (index, element) in students.enumerated() {
        print("Index: \(index), Gender: \(element.gender)")
    }
}

printKids()


//MARK: - 3) Удалите 7 учеников так, чтобы получилось 5 мальчиков и 5 девочек. См. Удаление по диапазону. Выведите результат в консоль.



students.removeSubrange(0...6)
let leight = students.count
students.removeSubrange((leight - 2)...(leight - 1))
    
printKids()

//MARK: - 4) Создайте массив оценок от 0 до 5 и второй — от 6 до 10. Объедените два массива в один.

var scores = [1, 2, 3, 4, 5]
var scores2 = [6, 7, 8, 9, 10]

let allScores = scores + scores2
var allScores2 = scores
allScores2.append(contentsOf: scores2)

//MARK: - 5) Присвойте каждому ученику оценку. Так, чтобы в консоли получилось примерно: «Вася — 5 баллов.Неплохо.».

func getFeedback(_ score: Int) -> String {
    switch score {
    case 1...3:
        return "Плохо"
    case 4...6:
        return "Нормально"
    case 7,8:
        return "Хорошо"
    case 9, 10:
        return "Отлично"
    default:
        return "Оценка не корректна"
    }
}

let boyNames = ["Александр", "Максим", "Иван", "Дмитрий", "Андрей"]
let girlNames = ["Анна", "Мария", "Екатерина", "Александра", "Ольга"]

for element in students {
    let randomNameIndex = Int.random(in: 0...4)
    let randomScore = allScores[Int.random(in: 0...9)]
    let feedback = getFeedback(randomScore)
    let name = element is Boy ? boyNames[randomNameIndex] : girlNames[randomNameIndex]
    print("\(name) - \(randomScore) баллов. \(feedback).")
}

//MARK: - 6) Создайте массив из чисел. Числа - это купюры в долларах. Посчитать количество денег и вывести в консоль

var monye = [2, 3, 5, 7, 12, 123, 411 ,12]

var totalMonye = 0

for i in monye {
    totalMonye += i
}

print(totalMonye)

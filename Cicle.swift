//MARK: 1) Создайте массив "дни в месяцах": Распечатайте элементы, содержащие количество дней в соответствующем месяце, используяцикл for и этот массив.
let daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

// Создание массива, содержащего названия месяцев
let monthNames = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]

func printDayInMonth() {
    guard daysInMonths.count == monthNames.count else {
        print("Количество элементов в массиве дней и имен месяцев не совпадает")
        return
    }

    for (index, days) in daysInMonths.enumerated() {
        print("\(monthNames[index]) имеет \(days) дней")
    }
}
//MARK: - 2) Создать в if и отдельно в switch программу которая будет смотреть на возраст человека и говорить куда ему идти в школу, в садик, в универ, на работу или на пенсию и тд.

let agesIfElse = [3, 10, 19, 25, 70, -1]
for age in agesIfElse {
    print("If else Возраст \(age): \(determineActivityByAgeIfElse(age: age))")
    print("Switch Возраст \(age): \(determineActivityByAgeSwitch(age: age))")
}


func determineActivityByAgeIfElse(age: Int) -> String {
    if age >= 0 && age <= 5 {
        return "Иди в садик"
    } else if age >= 6 && age <= 17 {
        return "Иди в школу"
    } else if age >= 18 && age <= 22 {
        return "Иди в университет"
    } else if age >= 23 && age <= 64 {
        return "Иди на работу"
    } else if age >= 65 {
        return "Иди на пенсию"
    } else {
        return "Некорректный возраст"
    }
}

func determineActivityByAgeSwitch(age: Int) -> String {
    switch age {
    case 0...5:
        return "Иди в садик"
    case 6...17:
        return "Иди в школу"
    case 18...22:
        return "Иди в университет"
    case 23...64:
        return "Иди на работу"
    case 65...:
        return "Иди на пенсию"
    default:
        return "Некорректный возраст"
    }
}

//3) В switch и отдельно в if создать систему оценивания школьников по 12 бальной системе и высказывать через print мнение.


func getFeedbackScoreSwitch(_ score: Int) -> String {
    switch score {
    case 1...3:
        return "Плохо"
    case 4...6:
        return "Нормально"
    case 7,8:
        return "Хорошо"
    case 9, 10:
        return "Отлично"
    case 11, 12:
        return "Превосходно"
    default:
        return "Некорректная оценка"
    }
}

func getFeedbackScoreIfElse(_ score: Int) -> String {
    if (1...3).contains(score) {
        return "Плохо"
    } else if (4...6).contains(score) {
        return "Нормально"
    } else if (7...8).contains(score) {
        return "Хорошо"
    } else if (9...10).contains(score) {
        return "Отлично"
    } else if (11...12).contains(score) {
        return "Превосходно"
    } else {
        return "Некорректная оценка"
    }
}

let scores = [2, 5, 7, 10, 12, 15]
for score in scores {
    print("Switch Оценка \(score): \(getFeedbackScoreSwitch(score))")
    print("If Else Оценка \(score): \(getFeedbackScoreIfElse(score))")
}

//MARK: - 4) Cоздать создайте цикл в цикле. В первом цикле интервал 200 раз во втором как доедем до 15 выйти со всех циклов.

var shouldStop = false

for i in 1...200 {
    print("First \(i)")
    for z in 1...200 {
        print("First: \(i), Second: \(z)")
        if z == 15 {
            shouldStop = true
            break
        }
    }
    if shouldStop {
        break
    }
}

outerLoop: for i in 1...200 {
    print("First \(i)")
    for z in 1...200 {
        print("First: \(i), Second: \(z)")
        if z == 15 {
            break outerLoop
        }
    }
}

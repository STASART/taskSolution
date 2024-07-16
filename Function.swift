/*
1) - Создать 3 функции:
1)первая функция принимает массив Int и сортирует его по порядку (возрастание). После этого распечатывает результат в консоль;
2)вторая функция принимает массив String, меняет 1, 2 и 3 элементы и сортирует по
алфавиту. После этого распечатывает результат в консоль;
3)третья функция принимает 2 массива String и складывает их. После этого
распечатывает результат в консоль.
 */

func sortAndPrintArray(_ array: [Int]) {
    let sortedArray = array.sorted()
    print("Отсортированный массив: \(sortedArray)")
}

let intArray = [5, 3, 8, 1, 2]
sortAndPrintArray(intArray)

func modifyAndSortArray(_ array: [String]) {
    var modifiedArray = array
    if modifiedArray.count >= 3 {
        let temp = modifiedArray[0]
        modifiedArray[0] = modifiedArray[2]
        modifiedArray[2] = modifiedArray[1]
        modifiedArray[1] = temp
    }
    let sortedArray = modifiedArray.sorted()
    print("Измененный и отсортированный массив: \(sortedArray)")
}


let stringArray = ["яблоко", "груша", "банан", "апельсин"]
modifyAndSortArray(stringArray)

func combineAndPrintArrays(_ array1: [String], _ array2: [String]) {
    let combinedArray = array1 + array2
    print("Объединенный массив: \(combinedArray)")
}

let stringArray1 = ["кот", "собака", "птица"]
let stringArray2 = ["рыба", "лошадь", "корова"]
combineAndPrintArrays(stringArray1, stringArray2)

/*
2) Создать журнал для учителя, который будет принимать имя студента, профессию и оценку изаписывает это все в массив. И внесите 10 студентов туда и распечатаете через цикл for.
 */

struct Student {
    let name: String
    let proffesion: String
    let score: Int
}

var jornal = [Student]()

let studentNames = ["Александр", "Максим", "Иван", "Дмитрий", "Андрей","Анна", "Мария", "Екатерина", "Александра", "Ольга"]
let professions = ["Программист", "Инженер", "Учитель", "Врач", "Юрист", "Дизайнер", "Маркетолог", "Бухгалтер", "Архитектор", "Журналист"]

func addToJornal(name: String, proffesion: String, score: Int) {
    jornal.append(.init(name: name, proffesion: proffesion, score: score))
}

func massWriteToJornal(studenNames: [String], professions: [String]) {
    guard studentNames.count == professions.count, studentNames.count == 10 else { return }
    for (index, name) in studenNames.enumerated() {
        addToJornal(name: name, proffesion: professions[index], score: Int.random(in: 1...10))
    }
}

massWriteToJornal(studenNames: studentNames, professions: professions)

func readJornal(jornal: [Student]) {
    for student in jornal {
        print("Имя: \(student.name). Професия: \(student.proffesion). Оценка \(student.score).")
    }
}

readJornal(jornal: jornal)

//MARK: - 4) Создайте функцию которая принимает параметры и вычисляет площадь круга.
func calculateCircleArea(radius: Double) -> Double {
    Double.pi * radius * radius
}

let radius = 5.0
let area = calculateCircleArea(radius: radius)

/*
5) Создайте Dictionary с именем ученики , где ключ name и score, а значение (1 тюпл из 5 имен) и (второй тюпл из 5 оценок).И распечатайте только имена по ключу.
*/

typealias FiveValue = (String, String, String, String, String)

let students: [String: FiveValue] = [
    "names": ("Иван", "Мария", "Петр", "Анна", "Дмитрий"),
    "scores": ("85", "92", "78", "90", "88")
]

func printStudents(students: [String: FiveValue]) = [ {
    if let studentNames = students["names"]{
        print("Имена учеников: \(studentNames.0), \(studentNames.1), \(studentNames.2), \(studentNames.3), \(studentNames.4)")
    } else {
        print("Данные об учениках не найдены")
    }
}

printStudents(students: students)

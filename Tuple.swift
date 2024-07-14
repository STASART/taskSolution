//MARK: - 1) Создать кортеж с 3-5 значениями. Вывести их в консоль 3 способами.
let person = (name: "Иван", age: 30, city: "Москва", job: "Программист")

print("1, 2. Имя: \(person.name), Возраст: \(person.1), Город: \(person.2), Работа: \(person.job)")

print(person)

let (name, age, city, job) = person
print("2. Имя: \(name), Возраст: \(age), Город: \(city), Работа: \(job)")

//MARK: - 2,3)Давайте представим, что мы сотрудник ГАИ и у нас есть какое-то количество нарушителей. Задача. Создать кортеж с тремя параметрами Распечатайте наших бедокуров в консоль через print(). Выведите каждый параметр в консоль. Тремя способами.
let violationsFirst = (speeding: 10, drunkDriving: 5, withoutLicense: 3)

print("Превышение скорости: \(violationsFirst.speeding), Вождение в нетрезвом виде: \(violationsFirst.1), Без прав: \(violationsFirst.2)")
print(violationsFirst)



//MARK: - 4,5)Пусть напарники соревнуются: создайте третий кортеж, который содержит в себе разницу между первым и вторым.
let violationsSecond = (speeding: 5, drunkDriving: 2, withoutLicense: 1)

let difference = (speedingDeffernce: violationsFirst.speeding - violationsSecond.0,
                  drunkDrivingDeffernce: violationsFirst.drunkDriving - violationsSecond.1,
                  withoutLicenseDeffernce: violationsFirst.withoutLicense - violationsSecond.withoutLicense)

print(difference)
print("Разница в превышении скорости: \(difference.speedingDeffernce)")
print("Разница в вождении в нетрезвом виде: \(difference.1)")
print("Разница в бесправниках: \(difference.withoutLicenseDeffernce)")

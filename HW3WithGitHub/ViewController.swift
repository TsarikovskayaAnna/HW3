//
//  ViewController.swift
//  HW3WithGitHub
//
//  Created by Serg on 1/26/18.
//  Copyright © 2018 Ann Tsarikovskaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
        
        //   StringEasy 1
        print("String Easy. Task1")
        countCharactersMyName()
        print("-------------------------------")
        
        print("String Easy. Task2")
        print(lowercasedMyName(firstName: "Anna", lastName: "Tsarikovskaya"))
        print("-------------------------------")
        
        print("String Easy. Task3")
        prefixOfFatherName()
        print("-------------------------------")
        
        //   ArrayEasy 1
        
        print("ArrayEasy. Task1")
        print(removeArray())
        print("-------------------------------")
        
        print("ArrayEasy. Task2")
        mergeArray()
        print("-------------------------------")
        
        print("ArrayEasy. Task3")
        var green = ["leaf", "grass", "flower", "tree"]
        getValueArray (green: ["leaf", "grass", "flower", "tree"])
        print("-------------------------------")
        
        print("ArrayEasy. Task4")
        let greenArray = ["leaf", "grass", "flower", "tree"]
        print(getValueArray(green: greenArray))
        print("-------------------------------")
        
        print("ArrayEasy. Task5")
        addTwoPairsForDictionary()
        print("-------------------------------")
        
        print("ArrayEasy. Task6")
        let people = [ "Bob" : 20, "Max" : 23, "Jack" : 34 ]
        let newPeople = removeHumanFrom(people: people, removeName: "Max")
        print("-------------------------------")
        
    }
    //    String Easy:
    //    Задание1. Создать строку со своим именем. Написать метод который получает это имя и возвращает кол-во символов в строке с вашим именем. Возвращенное значение показать в консоль
    func countCharactersMyName() {
        let myName = "Anna"
        print("myName содержит \(myName.count) символа")
    }
    //    2 Написать метод который принимает 2 слова, например имя и фамилию, возвращает юзернейм который имеет буквы нижнего регистра и разделяет имя и фамилию символом “_”
    func lowercasedMyName(firstName: String, lastName: String) -> String {
        let name = firstName
        let secondName = lastName
        return ("\(name.lowercased())_\(secondName.lowercased())")
    }
    //     3 Создать строку с именем и своим отчеством. Создать метод который проверит его на окончание “ич/на”. Выводит “М” или “Ж” в зависимости от окончания. Также учитывать регистр букв, то есть ИЧ или Ич или На и тд.
    func prefixOfFatherName() {
        let myNameAndFathersName = "Анна Валентиновна"
        if myNameAndFathersName.hasSuffix("на") {
            print("Ж")
        }
        if myNameAndFathersName.hasSuffix("ич") {
            print("М")
        }
    }
    //    Collections Easy:
    //    Задание1 Создать массив со значениями типа Int. Выполнить удаление всех элементов массива.
    func removeArray() {
        var myArray: [Int] = [1, 2, 3,  56, 9]
        myArray.removeAll()
    }
    
    //    Задание2 Создать 2 массива со значениями типа Int. Сделать соединение данных массивов. Результат вывести в консоль.
    func mergeArray() {
        let array1: [Int] = [1, 2, 3,  56, 9]
        let array2: [Int] = [2, 6, 4]
        let merge = array1 + array2
        print(merge)
    }
    
    //    Задание3Создать массив с любыми значениями типа строка(во viewDidLoad()). Создать метод который будет принимать как аргумент массив. Метод должен выводить в консоль элементы массива (по одному в одной строке)
    func getValueArray(green: [String])  {
        let greenArray = green
        for value in green {
            print("\(value)")
        }
    }
    
    //    Задание4 Создать массив с любыми значениями типа строка. Создать метод который будет принимать как аргумент массив. Метод должен возвращать массив который состоит из первого и последнего элемента массива, который был параметро
    func getValueArray(array: [String]) -> Array<String> {
        
        let firstElement = array.first!
        let lastItem = array.last!
        let merge = [firstElement] + [lastItem]
        return(merge)
    }
    
    //    Задание5 Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары).
    //    Добавить в данный словарь еще 2 новых элемента.
    func addTwoPairsForDictionary() {
        var ages: [String: Int] = [
            "Greg": 40,
            "Pol": 30,
            "lora": 15,
            "Kris": 2
        ]
        ages["Miranda"] = 69
        ages["Joe"] = 36
        print(ages)
    }
    //    Задание6 Создать словарь в котором ключ будет Строкой а значение Целым. Например ключ - имя, значение - возраст. Должно быть 3 элемента (3 пары).Создать метод который будет иметь 2 параметра: словарь (типа “Строка : Целое”) и ключ типа Строка. Данный метод должен удалить из полученного (как первый аргумент) словаря элемент ключ которого был передан (как второй аргумент).
    func removeHumanFrom(people: [String : Int], removeName: String) {
        var totalPeople = people
        totalPeople.removeValue(forKey: removeName)
        print(totalPeople)
    }
}


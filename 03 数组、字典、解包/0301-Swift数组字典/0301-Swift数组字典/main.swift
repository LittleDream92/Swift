//
//  main.swift
//  0301-Swift数组字典
//
//  Created by Meng Fan on 16/12/7.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import Foundation

//集合类型
/*
 如果用let声明集合，那被声明的集合就是不可变集合类型(Collections)。只能在创建时定义集合内中的元素，在使用过程中，集合的大小和内容将不能改变。
 如果用var声明集合，那被声明的集合就是可变集合类型(Mutability of Collections)。可以在使用过程中增加，减少和改变集合中的内容。
 
 PS：在一些集合元素不需要改变的情况下推荐使用不可变集合，能优化程序。
 */

/*---------------------数组-------------------------*/
print("------数组--------")

//数组的标准创建方式
var intArray = Array<Int>()

//数组的简略创建法
var intArr = [Int]()

//数组的快速创建法
var teachers = ["Mr.zhang", "Mr.Li"]

//快速创建有多个相同值的数组
var threeDoubles = [Double](repeating:0.0, count:3) //3个double类型的0  [0.0, 0.0, 0.0]

//清空数组
threeDoubles = []

//添加元素（末尾）  .append()   +=
intArray.append(1)
intArr.append(4)

teachers += ["Mr.Niu"]
print(teachers)

//插入元素  insert(_:atIndex:)
teachers.insert("haha", at: 1)
print(teachers)

//＋ swift中类型相同的两个数组可以进行相加操作
var ints = intArray + intArr
print(ints) //[1, 4]


//通过下表取出和修改元素
//取出元素
let itemTeacher = teachers[1]
print(itemTeacher)  //haha
//修改元素
teachers[1] = "kuangsu"
print(teachers)

//修改一个范围内的元素    将整个范围的内容替换成后边的新值
teachers[0...1] = ["uzaishi", "galy", "JiHao"]
print(teachers)


/*  删除元素
 *  removeAll、removeAtIndex()、removeFirst、removeLast、removeRange(subRange: Range<Int>)
 */
teachers.remove(at: 2)
print(teachers)

//获取数组元素的个数 .count
let intCount = ints.count
print(intCount)

//判断数组是否为空
let empty = threeDoubles.isEmpty
print(empty)    //bool true


//for in 循环中获取数组的值和索引
for  (index, value) in teachers.enumerated() {
    print("索引为:\(index)，值为:\(value)")
}


/*---------------------字典-------------------------*/
print("------字典--------")


//字典的标准创建方式     Dictionary<Key, Value>
var intDict = Dictionary<Int, String>()

//字典的简略创建法      [Key: Value]
var intDic = [Int : String]()

//字典的快速创建法
var student: [Int : String] = [60 : "Rose", 79 : "Jack"]
var students = [60 : "Rose", 79 : "Jack"]

print(student, students)


//修改元素  通过key修改value
students[60] = "小李子"    //key存在时更新Value
students[50] = "SDK"
students[80] = "SDK"    //key不存在时创建到第一个
print(students)     //[80: "SDK", 50: "SDK", 60: "小李子", 79: "Jack"]
//修改元素         updateValue(_:forKey:)
students.updateValue("running man", forKey: 80)
students.updateValue("running", forKey: 20)

print(students)


//返回可选值 updateValue(_:forKey:)方法来更新字典的值时，会返回一个与值类型相同的可选值
var oldValue = students.updateValue("running no man", forKey: 80)
print(oldValue)     //Optional("running man")

oldValue = students[80]
print(oldValue)     //Optional("running no man")

oldValue = students[100]
print(oldValue)     //不存在key为100对应的值时，返回nil


//清空字典  [:] 在一个字典中的键和值的类型明确的前提下，我们可以使用[:]来清空一个字典
student = [:]
print(student)

//移除元素
students[80] = nil
let removeValue1 = students.removeValue(forKey: 50)     //有      返回对应的value
let removeValue2 = students.removeValue(forKey: 100)    //没有key：100对应的值时返回nil

print(students, removeValue1, removeValue2)


//字典的遍历 也可以只遍历key或者value
for (key, vallue) in students {
    print("key:\(key), value:\(vallue)")
}


for key in students {
    print(key)
}

for value in students {
    print(value)
}

/*---------------------set集合-------------------------*/
print("------set集合--------")

//Set集合储存的类型相同，没有确定的顺序，每个元素只出现一次

//创建集合  Set<Element>
var emptySet = Set<Int>()

//快速创建集合    不添加set声明时系统默认为数组
var fruit : Set<String> = ["apple", "banana", "orange"]
//var fruit : Set = ["apple", "banana", "orange"]
print(fruit)

//insert(_:)，remove(_:)方法，集合还有contains(_:)方法来判断集合中是否含有某元素。
//修改元素
fruit.insert("lemen")
let containPear = fruit.contains("pear")

print(fruit, containPear)

//集合也有count，isEmpty属性
var setCount = fruit.count
var haveFruit = fruit.isEmpty
print(setCount, haveFruit)


//遍历集合 可以使用sorted()排序
for fruitItem in fruit.sorted() {
    print(fruitItem)
}

//集合的运算 Swift集合也能像数学中的集合一样，进行运算，计算出交集，补集，判断包含，相交等
//交集                        intersect(_:)
//在一个集合中但不在两个的交集中   symmetricDifference(_:)
//并集                        union(_:)
//在一个集合中不在另一个集合中    subtract(_:)
var oddDigits : Set = [1, 2, 5, 7, 9]
let evenDigits : Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers : Set = [2, 3, 5, 7]
print(oddDigits.union(singleDigitPrimeNumbers).sorted())     //并集排序
print(oddDigits.intersection(evenDigits).sorted())  //交集
print(oddDigits.subtract(singleDigitPrimeNumbers))
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())


//集合之间的关系
//==    两个集合完全相同
//isSubset(of:)    判断一个集合中的值是否也被包含在另外一个集合中
//isSuperset(of:)  判断一个集合中包含另一个集合中所有的值
//isStrictSuperset(of:)或者isStrictSupersetOf(_:) 判断一个集合是否是另外一个集合的子集合 或者父集合并且两个集合并不相等。
//isDisjoint(with:)    判断两个集合是否不含有相同的值

let oddDigits1: Set = [1, 3, 5, 7, 9]
let evenDigits1: Set = [1, 7]
let singleDigitPrimeNumbers1: Set = [2, 3, 5, 8]
print( oddDigits1 == evenDigits1 )                                //false
print( evenDigits1.isSubset(of: oddDigits1) )                     //true
print( oddDigits1.isSuperset(of: evenDigits1) )                   //true
print( oddDigits1.isStrictSuperset(of: evenDigits1) )             //true
print( oddDigits1.isDisjoint(with: singleDigitPrimeNumbers1) )    //false


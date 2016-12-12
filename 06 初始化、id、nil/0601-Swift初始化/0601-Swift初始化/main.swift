//
//  main.swift
//  0601-Swift初始化
//
//  Created by Meng Fan on 16/12/12.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import Foundation


//初始化是类、结构体、枚举类型实例化的准备阶段
//swift的构造器没有返回值

//存储属性的初始化  －》 存储属性不能为不确定状态
struct Person {
    
//    // 标准写法
//    var name: String
//
//    init() {
//        name = "John"
//    }
    
    //简洁写法
    var name = "John"
    
}

//自定义初始化方式
struct Dog {
    var name = "", age = 0
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
}

var ps = Person()
print(ps.name)

var dog = Dog(name: "KiTi", age: 18)
print(dog)


//类的继承和初始化
var base = Base(name: "base Class")


//注意初始化的顺序
var sub = SubClass(name: base.name!, age: 7)
print("\(sub.name!), \(sub.age!)")

//反初始化
base = Base(name: "OtherBase")

//注意打印的顺序
sub = SubClass(name: base.name!, age: 16)
print("\(sub.name!), \(sub.age!)")

		

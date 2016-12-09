//
//  main.swift
//  0402-Swift方法
//
//  Created by Meng Fan on 16/12/9.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import Foundation

//实例化对象
var dog = Dog()

//实例方法
dog.printGood()
dog.printWithString(string: "Bad")
print(dog.sum(a: 3, b: 2))

//类方法
var (_, _, sum) = Dog.classMethod(a: 20, b: 30)
print(sum)


//下标脚本
dog[0] = 100
dog[1] = 200
print(dog[0])
print(dog[1])

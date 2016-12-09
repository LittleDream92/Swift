//
//  main.swift
//  0401-Swift类
//
//  Created by Meng Fan on 16/12/8.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import Foundation


//实力化对象
var ps = Person()

let a = ps.a
let b = ps.b

print(a, b)

ps.name = "Rose"
print(a, b, ps.name, ps.b)

//调用类型属性, ++在swift 3 中已废除
//print(++Person.classValue)

//属性监视器
ps.age = 100
ps.age = 101

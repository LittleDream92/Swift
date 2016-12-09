//
//  Person.swift
//  0401-Swift类
//
//  Created by Meng Fan on 16/12/8.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import Cocoa

/*
 用class定义一个类
 一个类通常由 属性、下标脚本、方法 构成
 */


class Person: NSObject {
    
    //属性一般分为 存储属性、计算属性、类型属性
    
    //存储属性---存储特定类中的一个常亮或者变量
    //注意：定义的时候必须有初始值
    //常亮存储属性
    let a:Int = 1
    //变量存储属性
    var b:String?
    
    
    //计算属性
    //计算属性不存储值，仅仅是提供一个getter和setter来获取值和设置其他属性
    var name:String {
        get {
            return "Jack"
        }
        
        set {
            b = newValue    //newValue是默认形参，可省略
        }
    }
    
    
    
    //类型属性——不需要对类进行实力化就可以使用的属性
    //类属性定义的关键字是Class， 并且一定是变量，不能是常量
    class var classValue:Int {
        get {
            return 2016
        }
        
        set(newValue) {
            
        }
    }
    
    
    //属性监视器——监控属性值的改变
    //每次属性值被修改时，都会调用
    var age: Int? {
        willSet(newAge) {
            print("newAge is \(newAge)")
        }
        
        didSet(oldAge) {
            if let sure = oldAge {
                print("oldAge is \(sure)")
            }else {
                print("oldAge is nil")
            }
        }
    }
    

}

//
//  Dog.swift
//  0402-Swift方法
//
//  Created by Meng Fan on 16/12/9.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import Cocoa

class Dog: NSObject {
    
    //方法就是定义在类中的函数，氛围类方法和实例方法
    
    //不带参数的实例方法
    func printGood() {
        print("Good")
    }
    
    //带一个参数的实例方法
    func printWithString(string: String) {
        print(string)
    }
    
    //带两个参数有一个返回值实例方法
    func sum(a: Int, b: Int) -> String {
        return String(a+b)
    }
    
    //类方法
    //带两个参数，返回一个元组类型的类方法
    class func classMethod(a: Int, b: Int) -> (String, String, Int) {
        return(String(a), String(b), a+b)
    }
    
    var num:[Int] = Array(repeating: 0, count: 10)
    
    //下标脚本
    //下标脚本允许你通过在实例后面的方括号中传入一个或者多个的索引值来对实例进行访问和赋值
    subscript(index: Int) -> Int {
        get {
            return num[index]
        }
        
        set(newValue) {
            num[index] = newValue
        }
    }

}

//
//  main.swift
//  0501-Swift函数
//
//  Created by Meng Fan on 16/12/9.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import Foundation

//func 函数名（参数变量： 类型， 参数变量：类型） {}



//一个简单的求和函数
//函数类型（int, int） -> (int)
//如果没有指定形参是否可变，则默认是常量
func add( a: Int, b: Int) -> Int {
    var a = a
    a = 1
    return a + b
}



//函数类型(int, int, int)->(int), a,b,c为常量
func add(a: Int, b: Int, c: Int) -> Int {
    return a + b + c
}


//参数添加默认值

func printstring(string: String = "hehe") {
    print(string)
}

//参数可变
func printString(strings: String...) {
    for string in strings {
        print(string)
    }
}


//函数类型做参数
func add(addFun: (Int, Int, Int) -> Int, a: Int, b: Int) {
    print(addFun(a, b, 50))
}



//函数类型做返回值
enum FunctionType {
    case Add
    case Minus
}

func minus(a: Int, b: Int) -> Int {
    return a - b
}


func chooseFuntion(funType: FunctionType) -> (Int, Int) -> Int {
    return funType == FunctionType.Add ? add : minus
}


//函数的嵌套
func mainFunction(input: Int) -> Int {
    func internalFunction(input: Int) -> Int {
        return input - 1
    }
    
    return internalFunction(input: input - 1)
}





//调用函数
var a = 10, b = 20;
print(add(a: a, b: b))      // 21
print(add(a: a, b: b, c: 10))   //40

printstring()
printString(strings: "mama", "baba")


//函数作为参数
//add(add, a: a, b: b)


//函数作为返回值
let fun = chooseFuntion(funType: FunctionType.Minus)
print(fun(a, b))

print(mainFunction(input: 10))

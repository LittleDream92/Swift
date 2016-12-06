//
//  ViewController.swift
//  0102-Swift基本数据类型
//
//  Created by Meng Fan on 16/12/6.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      /*
        /**
         *  swift中包含了，所有的c和OC中定义的数据类型，并且还有一些独有的数据类型，如：tuple。
         
         Swift中的数据类型包括：整型、浮点型、布尔型、字符型、元组、集合、枚举、结构体和类。
         可按参数传递方式的不同分为：值类型和引用类型。
         （1）、值类型：在赋值或给函数传递参数时候，创建一个副本，把副本传递过去，这样在函数的调用过程中就不会影响原始数据。
         （2）、引用类型：在赋值或给函数传递参数时候，把本身数据传递过去，这样在函数的调用过程中会影响原始数据。
         其中，整型，浮点型，布尔型，字符型，元组，集合，枚举，结构体属于值类型。类属于引用类型。
        */
        
       
        //变量和常量
        //>>>>>>>>>>>>>>>>>>>>>>>> 变量 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        /**
         *  变量
         *  var关键字定义变量
         *
         *  var 变量名 ＝ 变量值
         *PS：编译器通过变量值来推断变量名的类型
         *      
         *  也可以通过":"指定变量的类型
         */
//        var d   //❌必须初始化
        
        var a = 10  //a是整型
        
        var b = "SWIFT" //b是字符串
        
        var c = true    //C是布尔类型
        var d : Int     //d是Int类型
        d = 10
        
        print(a, b, c, d)
        print("a = \(a)") //前一个a是字符串，后一个a是变量名
        
        
        //⚠️：swift非常注重格式，像下面这样的写法是错误的
        //var b=10
        
        
        
        
        //>>>>>>>>>>>>>>>>>>>>>>>> 常量 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        /**
         *  常量
         *  let关键字定义常量
         *
         *  let 常量名 ＝ 常量值
         *PS：编译器是通过常量值来推断常量名的类型
         */
        
        let A = 10
        
        let B = true
        
        print(A, B)
        
        
        //>>>>>>>>>>>>>>>>>>>>>>>> 变量和常量的区别 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        /**
         *  常量和变量的区别：
         *  1：常量只能赋值一次，不能再修改；
         *  2：变量可以修改多次，修改过的变量值的类型必须相同；
         */
//        A = 20  //❌
//        A++ //❌
        
//        a = "SWIFT" //❌
        a = 20
        print(a)
        

        //>>>>>>>>>>>>>>>>>>>>>>>> 基本数据类型 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
//        //整形
//        let minIntValue = Int32.min
//        let maxIntValue = Int8.max
//        println(minIntValue,maxIntValue)
//        //通常开发中不需要选择位数，直接用Int。它和当前机器环境的字长数相同
        
        
        //浮点型
        let f1 : Double = 1.00123456789
        let f2 : Float = 1.00123456789
//        print(f1.format(".1"))
        
        print(String(format: "%.2f", f1))   //1.00
        print(f1)   //1.00123456789
        print(f2)   //1.00123
        
        
        //布尔类型  -   只能是真或假
        let true1 = true
        let false1 = false
        
        if !true1 {
            print(true1, "\(false1)")
        }else {
            print("\(true1), false1")
        }
        
        
        //字符型
        //字符
        //在swift中，字符和字符串都用 双引号“”括起来，要想将变量定义成字符型，必须指定类型
        let char : Character = "a"
        let char1 = "a"
        let char2 = char    //如果赋值语句右边是一个字符类型数据，则变量默认是字符类型
        print(char, char1, char2)   //(字符, 字符串, 字符)
        
        //字符串
        //字符串的初始化
        let haha = "abc"
        let haha1 = String("abc")
        
        print(haha, haha1)  //abc Optional("abc")
        
        
        //通过for循环来枚举每一个字符
        for c : Character in haha.characters {
            print(c)
        }
        for c : Character in (haha1?.characters)! {
            print(c)
        }
        
        
        /**
         *  元组类型
         *  元组是包含多个值的类型，将多个值组合为单个值
         *  元组中的值可以是任意类型,而且每个元组中的类型不必要相同
         */
        let tuples = (111, 222, "abc", "d")
        print(tuples)
        
        let tuples1 = tuples
        print(tuples1)
        
        //可以使用下划线 “_” 进行占位
        let (_, e, _, _) = tuples
        print(e)
        
        //元组的用法
        let tuples2 = (name: "hehe", age: 20)
        print(tuples2)
        
 
        /**
         *  可选类型
         *  可选类型是用来解决对象变量或常量为空的情况
         *  可选类型后加“?”代表允许变量没有值，并设为nil
         */
        //对于一个可选变量，使用前通常做判断
        var f : String?
        print("f is \(f)")
        
        f = "abc"
        if f != nil {
            print("f is \(f)")
        }

        //每次使用可选变量前都先判断是否为空，这很麻烦
        //"!"用来确定可选变量一定有值
        var g : String?
        g = "123"
        print("g is \(g!)")
        
        var h : Int!
        h = Int(g!)
        
        h! += 1;
        
        print("h is \(h)")
 
 */
        
        //数值的可读性
        //"_"用来分隔较大的数值
        let value1 = 10_000_000_000   //更方便看出来是100亿
        
        
        //类型别名(typealias)
        typealias NewInt = Int
        let new_value:NewInt = 123
        print(new_value)
        
        //>>>>>>>>>>>>>>>>>>>>>>>> 基本数据类型转换 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        //int转double、float、string
        let j = 3
        let dj = Double(j)
        let fj = Float(j)
        let sj = String(j)
        print("\(j),\(dj),\(fj),\(sj)")
        
        //string转int、double、float
        let s = "1234.5"
        let iS = Int(s)//字符串内容必须是整形才能用此方法
        let ns = s as NSString
        let iS1 = ns.integerValue
        let ds = ns.doubleValue
        let fs = ns.floatValue
        
        
        print("\(iS),\(iS1),\(ds),\(fs)")


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


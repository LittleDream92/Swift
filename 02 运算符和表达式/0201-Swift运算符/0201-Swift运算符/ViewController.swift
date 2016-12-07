//
//  ViewController.swift
//  0201-Swift运算符
//
//  Created by Meng Fan on 16/12/7.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /**
         *  赋值运算符   =
         */
        let a = 10
        var b = 20
        b = a
        if a == b {
            print("a == b \(b)")
        }
        
//        let (x, y) = (1,2)
//        if x = y {
//            //这里会报错，因为 y 赋值给 x 不会有返回值，在 C 语言中，因为有返回值，可以判断 x 是否为空，这里也体现了 Swift 语言的安全性
//        }
        
        
        
        /**
         *  数值运算符
         *  字符串的拼接                                  +
         *  Int / Double / Float同类型内的加减乘除    ：   + - * / %
         *  Double和Float 类型的加减乘除必须换算成统一的数据类型，另外swift 3 取消了浮点数的求余运算％
         */
        // + 可用于字符串的拼接
        let s1 = "abc", s2 = "def"
        let s3 = s1 + s2
//        let s4 = 'a' + 'b'  //swift 3不允许两个字符进行＋操作
        
        print(s3)   //s3是String类型的
        
        //Int
        let c1 = a + b
        let c2 = a - b
        let c3 = a * b
        let c4 = a / b
        let c5 = a % b
        let c6 = a % -b     //swift 中％ 后边的符号是忽略的，即c5 c6是一样的
        
        
        print(c1, c2, c3, c4, c5, c6)   //c1,c2,c3,c4, c5都是Int类型的
        
        //Double
        let m1 = 12.0            //如果不指定M的类型，默认M位Double类型
        let m2 = 13.0
        
        let p1 = m1 + m2
        let p2 = m1 - m2
        let p3 = m1 * m2
        let p4 = m1 / m2
//        let p5 = m1 % m2    //❌'%' is unavailable: Use truncatingRemainder instead
        
        print(p1, p2, p3, p4)   //p1,p2,p3,p4都是Double类型
        
        //Float
        let n1:Float = 12.0
        let n2:Float = 13.0
        
        let q1 = n1 + n2
        let q2 = n1 - n2
        let q3 = n1 * n2
        let q4 = n1 / n2
//        let q5 = n1 % n2    //❌'%' is unavailable: Use truncatingRemainder instead

        print(q1, q2, q3, q4)   //q1, q2, q3, q4都是Float类型

        //  Int Double  Float 混合
        let k1 = m1 + Double(n1)        //转化为一种
        let k2 = Float(m1) - n1
        let k3 = c1 * Int(m1)
        let k4 = Float(m1) / n1
        
        let k5 = m1.multiplied(by: Double(c1))  //乘法
        let k6 = n1.divided(by: Float(c1))      //除法
        let k7 = Float(m1).truncatingRemainder(dividingBy: n1)    //求余
        let k8 = Double(n1).truncatingRemainder(dividingBy: m1)
        
        
        //k1 Double;  k2 Float;  k3 Int; k4 Float; k5 Double; K6 Float; k7 Float
        print(k1, k2, k3, k4, k5, k6, k7, k8)
        
 
        
        /*
         *  swift 3 中++ --被废除
         */
 /*       var z1 = 10.1
        z1++
        var z2 = z1++ + 10
        z1--
        let z3 = z1-- - --z2
        print("\(z1), \(z2), \(z3)") */
        
        /*
         *  复合赋值   += -= *= /=
         */
//        var h = 15.0 /= 2.8 //这种写法是❌的，因为复合运算是没有返回值的
        
        var f = 15.0
        f /= 2.8
        print(f)
        
        /*
         *  三目运算符
         */
        var m = f == 16 ? 1 : 0     //m默认Int类型
        print(m)
        
        
        /**
         *  区间运算符
         *  1...10  闭区间：    1<= x <= 10
         *  1..<10  半闭区间：   1<= x <  10
         *
         */
        for index in 1...10 {
            print(index)
        }
        
        /**
         *  比较运算符  
         *  ==  !=  < >
         */
        var r1 = 8
        var r3 = 10
        if r1 != r3 {
            print("oy")
        }
        
        var r = (3, "e", 3)
        var u = (4, "d", 2)
        
        //比较两个元组:元组比较的前提是：1、元组内值的个数等；2、对应数据类型等；3、不能有BOOL类型
        if r < u {
            print("111")
        }else {
            print("222")
        }
        
        r = (4, "d", 3)
        if r < u {
            print("111")
        }else {
            print("222")
        }
        
        r = (4, "d", 1)
        if r < u {
            print("111")
        }else {
            print("222")
        }
        
        
        /*
         *  逻辑运算符 
         *  && || !
         */
        let j1 = true
        let j2 = false
        
        if j1 && !j2 {
            print("yes")
        }else {
            print("no")
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  0202-Swift常用语句
//
//  Created by Meng Fan on 16/12/7.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /**
         *  for循环语句
         */
        //乘法表
        for i in 1...9 {
            for j in 1...i {
                print("\(j) * \(i) = \(i*j) ", terminator: " ")
            }
            print("")
        }
        
        /**
         *  while 循环
         */
        var index = 0
        while index < 10 {
            print(index)
            index += 1
        }
        
        /*
         * repeat - while 类似于之前的do-while
         */
        var a = 0
        repeat {
            print("a: \(a)")
            a += 1
        }while (a < 10)
        
        /*
         *  if语句
         */
        var f = true
        if f {
            print(f)
            f = !f
        }else {
            print(f)
        }
        
        /*
         *   switch语句
         *  swift 除了支持C中的continue break return 还支持fallthrough
         *  PS:1.加了fallthrough后，会直接运行【紧跟的后一个】case或default语句，不论条件是否满足都会执行
         *     2.加了fallthrough语句后，【紧跟的后一个】case条件不能定义常量和变量
         *     3.执行完fallthrough后直接跳到下一个条件语句，本条件执行语句后面的语句不执行
         */
        //_是方便读数的符号
        let s1 = 5_000
        switch s1 {
        case 1000:
            print(1000)
            fallthrough
        case 5000:
            print(5000)
            fallthrough
        case 6000:
            break
            print(6000)
        case 3000...6000:
            print("5000 too")
        default:
            print("default")
        }
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


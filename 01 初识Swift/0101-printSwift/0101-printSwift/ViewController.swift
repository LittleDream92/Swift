//
//  ViewController.swift
//  0101-printSwift
//
//  Created by Meng Fan on 16/12/6.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

/**
 swift 是2014年苹果推出的一门新的语言，swift能够开发iOS 和 Mac 相关的App，执行效率比C，C++，Objective-C的开发效率更高，并且编写简洁。
 
 一下子从Objective－C学习swift，总觉得写法很怪异啊。
 */

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //println() 是一个输出函数（也叫打印日志），直接输出字符串
        print("Welcome to SWIFT class!")
        
        /**
         * \() 占位符
         *  占位符内只能是 整形、浮点型等基本类型，不能放字符串。
         */
        print("hello world \(1)")
//        print("hello World \(qq)")  //❌
        
        
        
        /*
         *  1、标识符
         *  定义：     开发过程中给变量、常量、方法、函数、枚举、结构体、类、协议等指定的名字。
         *  命名规范：  由大小写字母A-Z、下划线_、Unicode、数字、中文组成，首字符不能是数字
         */
        let hello = 111222
        let _123 = "123"
        let 呵呵 = "hehe"
        let _class = "😝😔😌😗😙😂"
        let 🎅 = "🐶🐺🐱🐭🐗🐦🐧🐗"
        print(hello, _123, 呵呵,_class, 🎅)
        
        /**
         *  2、关键字
         *  定义：  关键字是对编译器具有特殊意义的保留字符，不能用做标识符，在一般的编译工具中会标识为特定的颜色
         *  例如：  class break func......
         */
        
        
        /**
         *  3、注释
            //这是单行注释
             /*
                这是多行注释
             */
         
             /*
                 /*
                     /*
                        注释在swift中是可以嵌套的
                     */
                 */
             */

         */
        
        
        /**
         *  4、分号
         */
        let a = 10; //可以加上分号
        let b = 10  //也可以不加分号
        let c = 10, d = 10
//        let e = 10 ; println(e) //在同一行中写多行语句，必须使用分号隔开
        let e = 10 ; print(e)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


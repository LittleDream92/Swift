//
//  ViewController.swift
//  0203-Swift结构体枚举
//
//  Created by Meng Fan on 16/12/7.
//  Copyright © 2016年 Meng Fan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /*
         *  定义枚举
         */
        enum MapDirection {
            case North
            case South
            case East
            case West
            
            func simpleDescription() -> String {
                switch self {
                case .North:
                    return "I am North"
                case .South:
                    return "I am South"
                case .East:
                    return "I am East"
                case .West:
                    return "I am West"
                default:
                    return "default"
                }
            }
        }
        
        
        var en = MapDirection.North
        print(en.simpleDescription())
        en = .West
        print(en.simpleDescription())
        
        
        
        /**
         *  定义结构体  +
         */
        struct Summation {
            var addend: Int
            var augend: Int
            
            var addstring: String
            var augstring: String
            
            func sum() -> Int {
                return addend + augend
            }
            
            func sumstring() -> String {
                return addstring + augstring
            }
        }
        
        //初始化一个结构体
        let newStruct = Summation(addend: 10, augend: 20, addstring: "newStruct", augstring: "newStruct")
        print(newStruct.addstring)
        
        //使用结构体内的方法
        let sum = newStruct.sum()
        print(sum)
        
        print(newStruct.sumstring())
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

